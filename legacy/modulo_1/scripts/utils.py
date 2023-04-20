import os
#from sqlalchemy import create_engine
from sqlalchemy_utils import database_exists, create_database, create_engine

def get_directories():
    # getting working paths
    CURRENT_DIR = os.path.dirname(os.path.realpath('.'))
    QUERY_DIR = os.path.join(CURRENT_DIR, 'queries')
    DATA_DIR = os.path.join(CURRENT_DIR, 'data')
    return (CURRENT_DIR, QUERY_DIR, DATA_DIR)


def create_db(database_path):
    con = None
    con_path = os.path.join('sqlite:///' + database_path)
    try:
        con = create_engine(con_path)
        if not database_exists(con.url):
            create_database(con.url)
            print('database created!')
        else:
            print('database already exists!')
        return con
    except:
        print('error creating database!')

# function that creates a connection
def connect_db(database_path):
    con = None
    con_path = os.path.join('sqlite:///' + database_path)
    try:
        con = create_engine(con_path)
        return con
    except:
        print('error connecting to database!')


# load query
def load_query(QUERY_DIR, query_name):
    with open(os.path.join(QUERY_DIR,query_name)) as file:
        query = file.read()
        return query