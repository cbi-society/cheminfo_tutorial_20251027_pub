import pandas as pd
from argparse import ArgumentParser

# Example usage:
# python dataprep/parquet2csv.py input.parquet output.csv
# To run the script, use the command line:  
# python dataprep/parquet2csv.py input.parquet output.csv
# Replace 'input.parquet' and 'output.csv' with your actual file paths.

def argument_parser():
    parser = ArgumentParser(description="Convert Parquet file to CSV file")
    parser.add_argument("parquet_file", type=str, help="Path to the input Parquet file")
    parser.add_argument("csv_file", type=str, help="Path to the output CSV file")
    return parser
    
def parquet_to_csv(parquet_file: str, csv_file: str):
    df = pd.read_parquet(parquet_file)
    df.to_csv(csv_file, index=False)
    print(f"Converted {parquet_file} to {csv_file}")

if __name__ == "__main__":
    parser = argument_parser()
    args = parser.parse_args()
    parquet_to_csv(args.parquet_file, args.csv_file)

