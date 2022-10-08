# creating a database on the data directory, parsing a name argument

# imports
import os
import argparse
import glob
import pandas as pd
from utils import get_directories, connect_db


def bad_samples(raw_dataset):
    df_bad_samples = raw_dataset.loc[[1,2]] \
                    .sample(frac=0.02, replace= False)
    df_bad_samples[['status']] = 'good'
    
    return df_bad_samples
    

def main():

    # get directories and connection
    CURRENT_DIR, QUERY_DIR, DATA_DIR = get_directories()

    # setting up args
    parser = argparse.ArgumentParser()
    parser.add_argument('--database')
    args = parser.parse_args()
    database = args.database + '.db'
    database_path = os.path.join(DATA_DIR, database)

    # connects to database
    con = connect_db(database_path)
    
    # get CSV files


    # reads .csv file and generates random bad_samples
    #df = pd.read_csv(os.path.join(DATA_DIR, 'jura.csv'))
    #df_bad = bad_samples(df, 'Xloc', 'Yloc')



    csv_files = glob.glob(os.path.join(DATA_DIR, "*.csv"))

    # loop over the list of csv files
    for f in csv_files:
        
        a = os.path.basename(f).rstrip('.csv')
        # read the csv file
        df = pd.read_csv(f)
        df_bad = bad_samples(df)
        # creating tables
        df.to_sql(str(a), con, if_exists='replace', index=True)
        df_bad.to_sql(str(a)+'_bad_samples', con, if_exists='replace', index=True)


if __name__ == "__main__":
    main()