from typing import Type
from qutip import *


def geOps(dimHS,init_coh_num=[0,0]):
    if type(dimHS)==type(qeye(1)):
        # print(dimHS)
        dimHS=dimHS.dims[0]
    
    if len(dimHS)==2:
        opDim=dimHS[0]
        meDim=dimHS[1]
    else:
        opDim=dimHS
        meDim=0
        
    if meDim:
        opI=qeye(opDim)
        meI=qeye(meDim)
        
        ad=tensor(create(opDim),meI)
        a=tensor(destroy(opDim),meI)
        bd=tensor(opI,create(meDim))
        b=tensor(opI,destroy(meDim))
        
        idMat=tensor(opI,meI)
        
        initS=tensor(coherent(opDim,init_coh_num[0]),coherent(meDim,init_coh_num[1]))
        
    else:
        idMat=qeye(opDim)
        
        ad=create(opDim)
        a=destroy(opDim)
        bd=0*idMat
        b=0*idMat
        
        initS=coherent(opDim,init_coh_num[0])
    
    return [ad,a,bd,b,idMat,initS]

def geOps_vec(dimHS,init_coh_num=[0,0]):
    ad,a,bd,b,idMat,initS=geOps(dimHS,init_coh_num)
    
    aLd=spre(ad)
    aL=spre(a)
    aR=spost(ad)
    aRd=spost(a)
    
    
    bLd=spre(bd)
    bL=spre(b)
    bR=spost(bd)
    bRd=spost(b)

    
    idMat=to_super(idMat)
    initS=operator_to_vector(ket2dm(initS))
    
    return [aLd,aL,aRd,aR,bLd,bL,bRd,bR,idMat,initS]

def geOps_fock(dimHS,nums,vec=False):
    if vec:
        return operator_to_vector(tensor(fock_dm(dimHS[0],nums[0]),fock_dm(dimHS[1],nums[1])))
    else:
        return tensor(fock_dm(dimHS[0],nums[0]),fock_dm(dimHS[1],nums[1]))
    
def geOps_vec2(dimHS,init_coh_num=[0,0]):
    ad,a,bd,b,idMat,initS=geOps(dimHS,init_coh_num)
    
    aLd=tensor(ad,idMat)
    aL=tensor(a,idMat)
    aR=tensor(idMat,a)
    aRd=tensor(idMat,ad)
    
    bLd=tensor(bd,idMat)
    bL=tensor(b,idMat)
    bR=tensor(idMat,b)
    bRd=tensor(idMat,bd)
    
    idMat=tensor(idMat,idMat)
    initS=tensor(initS,initS)
    
    return [aLd,aL,aRd,aR,bLd,bL,bRd,bR,idMat,initS]
    
    