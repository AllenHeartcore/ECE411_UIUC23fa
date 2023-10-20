import sys
from gdsii.library import Library
from gdsii.elements import *

if len(sys.argv) != 2:
    exit(1)

with open(sys.argv[1], 'rb') as stream:
    lib = Library.load(stream)

lx = float('inf')
ly = float('inf')
hx = float('-inf')
hy = float('-inf')

for s in lib:
    if s.name.decode().endswith("_bank"):
        for e in s:
            if isinstance(e, Boundary):
                for p in e.xy:
                    if p[0] < lx:
                        lx = p[0]
                    if p[0] > hx:
                        hx = p[0]
                    if p[1] < ly:
                        ly = p[1]
                    if p[1] > hy:
                        hy = p[1]

print("{:.04f}".format((hx-lx)*(lib.logical_unit) * (hy-ly)*(lib.logical_unit)))
