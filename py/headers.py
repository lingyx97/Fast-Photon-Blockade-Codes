import sys
from pathlib import Path
sys.path.append(str(Path(__file__).parent/"common"))

import os

import qutip as qtp
import numpy as np
import matplotlib.pyplot as plt
from matplotlib import cm
import scipy as scp
import pandas as pd

import seaborn

from timeit import default_timer as timer

from geOps import *
from misc import *
from fracOpPow import *
from incompatibleFidelity import *
from mysave import *
from evo import *

tmp_file=Path(__file__).parent/"temp"
tmp_file.mkdir(parents=True, exist_ok=True)
os.chdir(str(tmp_file))