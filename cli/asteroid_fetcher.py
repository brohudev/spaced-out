import argparse
from skyfield.api import load

def main():
    parser = argparse.ArgumentParser(
        description='Basic asteroid data fetcher',
        epilog='Example: python cli/asteroid_fetcher.py --asteroid 433'
    )
    parser.add_argument('--asteroid', type=int, help='Asteroid number to look up')
    args = parser.parse_args()
    
    if args.asteroid:
        print(f"Fetching data for asteroid {args.asteroid}")
        # Actual implementation would go here
        planets = load('de421.bsp')
        print(f"Loaded planetary data successfully")

if __name__ == '__main__':
    main()
