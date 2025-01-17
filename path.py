#!/usr/bin/env python3
#-*-coding:utf-8-*-

import os
from pathlib import Path

_sum = 0
effect = 0

count = 0

dirs = os.getenv("PATH").split(os.pathsep)
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
    effect += 1

path_len = len(dirs)
print("binary sum:", _sum, "directory effects:", f"{effect}/{path_len}", "({:.0%})".format(effect / path_len))

