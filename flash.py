import sys
import time

def flash(count=5):
    for i in range(count, 0, -1):
        print(i)
        time.sleep(1)
    print("FLASH!")

if __name__ == "__main__":
    count = int(sys.argv[1]) if len(sys.argv) > 1 else 5
    flash(count)
