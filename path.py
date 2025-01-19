#!/usr/bin/env python3
#-*-coding:utf-8-*-

import os
from pathlib import Path

def statistics(dirs):
    _sum = 0
    effective = 0

    count = 0

    for path in dirs:
        print(path, end=" ")
        path = Path(path)
        if not path.exists():
            print("Not exists")
            continue
        for p in path.iterdir():
            if p.is_file() and os.access(p, os.X_OK):
                count += 1
        print(count)
        _sum += count
        count = 0
        effective += 1
    return _sum, effective

def main():
    dirs = os.getenv("PATH").split(os.pathsep)
    _sum, effective = statistics(dirs)
    path_len = len(dirs)
    print("binary:", _sum, "directory:", f"{effective}/{path_len}", "({:.0%})".format(effective / path_len))

if __name__ == "__main__":
    main()

