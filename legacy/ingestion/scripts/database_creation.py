# creating a database on the data directory, parsing a name argument

# imports
import os
import argparse
from utils import get_directories, create_db
 
def main():

    # getting paths
    CURRENT_DIR, QUERY_DIR, DATA_DIR = get_directories()

    # setting up args
    parser = argparse.ArgumentParser()
    parser.add_argument('--database')
    args = parser.parse_args()
    database = args.database + '.db'
   
    # setting up database name and path
    print(f'\nCreating database {database} ...')
    database_path = os.path.join(DATA_DIR, database)
    create_db(database_path)

if __name__ == "__main__":
    main()