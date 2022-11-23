from scipy.sparse import eye as idenMat
from qutip import *
from numpy import *
from scipy.optimize import minimize as ScipyMin

def incoFid(state1,state2,rotate=0):
    if(state2.dims[0][0]<state1.dims[0][0]):
        return incoFid(state2,state1,rotate)
    transMat=Qobj(idenMat(state1.dims[0][0],state2.dims[0][0]))
    stateCompat=transMat*state2
    if len(state2.dims)>1 and state2.dims[1][0]>1:
        stateCompat*=transMat.dag()
    if rotate:
        # stateCompat=stateCompat.unit()
        angles=arange(0,2*pi,0.005)
        rotation=[(angle*1j*num(state1.dims[0][0])).expm() for angle in angles]
        
        if len(state1.dims)>1 and state1.dims[1][0]>1:
            results=[]
            for rot in rotation:
                try:
                    results.append(fidelity(stateCompat,rot.dag()*state1*rot))
                except ValueError:
                    try:
                        results.append(fidelity(rot.dag()*state1*rot,stateCompat))
                    except ValueError:
                        print('debug')
                        print(rot)
                        print(stateCompat)
                        input("debug end")
                        
        else:
            results=[fidelity(stateCompat,rot.dag()*state1) for rot in rotation]
        result=amax(results)
    else:
        try:
            result=fidelity(stateCompat.unit(),state1)
        except ValueError:
            try:
                result=fidelity(state1,stateCompat.unit())
            except ValueError:
                print(stateCompat)
                print(stateCompat.unit())
                input(state1)
    return abs(result)**2

def findFid(state1, state2,ang):
    rot=(ang[0]*1j*num(state1.dims[0][0])).expm()
    if len(state1.dims)>1 and state1.dims[1][0]>1:
        return 1-fidelity(state2,rot.dag()*state1*rot)
    else:
        return 1-fidelity(state2,rot.dag()*state1)
    
