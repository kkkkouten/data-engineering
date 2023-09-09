import argparse

parser = argparse.ArgumentParser(description='Ingest CSV data to Postgres.')

parser.add_argument('user', help='user name for postgres')
parser.add_argument('pass', help='password for postgres')
parser.add_argument('host', help='host for postgres')
parser.add_argument('post', help='post for postgres')
parser.add_argument('db', help='database for postgres')
parser.add_argument('table-name', help='name of the table where we will write the results to')
parser.add_argument('url', help='url of the csv file')

args = parser.parse_args()
print(args.accumulate(args.integers))
