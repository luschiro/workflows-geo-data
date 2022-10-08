# imports
import os
from utils import get_directories, load_query, connect

# getting paths
CURRENT_DIR, QUERY_DIR, DATA_DIR = get_directories()
query_name = 'create_jura_table.sql'

database_path = os.path.join(DATA_DIR, 'raw_jura.db')
con = connect(database_path)

query = load_query(QUERY_DIR, query_name)
print(query)
con.execute(query)