import sys
import os 
import numpy as np
import qutip as qtp

# Disable
def blockPrint():
    sys.stdout = open(os.devnull, 'w')

# Restore
def enablePrint():
    sys.stdout = sys.__stdout__
    
def elemwise_divide(a,b,bad_val=np.nan,dtype="float64"):
    a=np.array(a,dtype=dtype)
    b=np.array(b,dtype=dtype)
    tmp=np.copy(a)
    tmp.fill(bad_val)
    return np.divide(a, b, out=tmp, where=b!=0)


def print_progress(data,cur,total):
    print(cur/total,end="..\r")
    return data

def trunHS(state,newDim):
    oldDim=state.dims[0]
    if type(newDim)==int:
        newDim=[newDim]
    if len(oldDim)!=len(newDim):
        print("dimensions do not match")
        input(str(newDim)+" "+str(oldDim))
        return state
    
    transOp=np.eye(np.prod(newDim),np.prod(oldDim))
    state=np.dot(np.dot(transOp,state.full()),np.transpose(transOp))
    state=qtp.Qobj(state,dims=[newDim,newDim])
    return state


from matplotlib.ticker import Locator


class MinorSymLogLocator(Locator):
    """
    Dynamically find minor tick positions based on the positions of
    major ticks for a symlog scaling.
    """
    def __init__(self, linthresh):
        """
        Ticks will be placed between the major ticks.
        The placement is linear for x between -linthresh and linthresh,
        otherwise its logarithmically
        """
        self.linthresh = linthresh

    def __call__(self):
        'Return the locations of the ticks'
        majorlocs = self.axis.get_majorticklocs()

        # iterate through minor locs
        minorlocs = []

        # handle the lowest part
        for i in range(1, len(majorlocs)):
            majorstep = majorlocs[i] - majorlocs[i-1]
            if abs(majorlocs[i-1] + majorstep/2) < self.linthresh:
                ndivs = 10
            else:
                ndivs = 9
            minorstep = majorstep / ndivs
            locs = np.arange(majorlocs[i-1], majorlocs[i], minorstep)[1:]
            minorlocs.extend(locs)

        return self.raise_if_exceeds(np.array(minorlocs))

    def tick_values(self, vmin, vmax):
        raise NotImplementedError('Cannot get tick locations for a '
                                  '%s type.' % type(self))
