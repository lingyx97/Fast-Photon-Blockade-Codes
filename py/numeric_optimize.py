from headers import *

qtp.settings.auto_tidyup = False

params1=[-0.985391,0.1538717]
params2=[1/100,1/100*np.exp(1j*0.5252)]

dimHS=[6,15]


ad,a,bd,b=geOps(dimHS)[:4]


trange=np.arange(0,10*np.pi,np.pi/500)


g0=0.3
kap=1/50

def g2fun(a,b):
    if a==0 or b==0:
        print(a)
        print(b)
        return 1
    if np.abs(np.abs(a)-a)>1e-12:
        print("<ad*ad*a*a> not real, <ad*ad*a*a>="+str(a)+"<ad*a>**2="+str(b))
    return np.abs((a/b)/b)
def commu(x,y):
    return x*y-y*x
def ham(D1,D2,psi,t):
    return -1j*bd*b-g0*ad*a*(bd+b)+E0*np.exp(-1j*D1*t)*ad+E0*np.exp(1j*D1*t)*a\
        +E0*np.exp(1j*psi)*np.exp(-1j*D2*t)*ad+E0*np.exp(-1j*psi)*np.exp(1j*D2*t)*a


E0=1/20
glob_res=False
def g2num(params):
    D1,D2,psi=params
    res=evoNum2(dimHS,Delts=[D1,D2],E0s=[E0,E0*np.exp(1j*psi)],g0=g0,kap=kap,ts=trange)[1]
    res_diag=res[-1].ptrace(0).diag()
    g2numoccu=[np.abs(res_diag[1]),np.abs(res_diag[2])]
    ada=g2numoccu[0]+2*g2numoccu[1]
    adad=2*g2numoccu[1]
    g2num=g2fun(adad,ada) 
    # res_state=res[-1]
    # ada=[(s*ad*a).tr() for s in res[1]]
    # adad=[(s*ad*ad*a*a).tr() for s in res[1]]
    # g2num=g2fun((res_state*ad*ad*a*a).tr() , (res_state*ad*a).tr()) 
    # g2grad=-1j*commu(ham(D1,D2,psi,10*np.pi),res_state)+\
    #     kap/2*(a*res_state*ad-ad*a*res_state-res_state*ad*a)
    # g2grad2=-1j*commu(ham(D1,D2,psi,10*np.pi),g2grad)+\
    #     kap/2*(a*g2grad*ad-ad*a*g2grad-g2grad*ad*a)
    n1num=res_diag[1]
    
    res=1/n1num
    global glob_res
    if (not glob_res) or  res<glob_res:
        # g2res=g2num
        glob_res=res
    print(glob_res)
    return res

def g2num_mono(Delt):
    res=evoNum2(dimHS,Delts=[Delt],E0s=[E0],g0=g0,kap=kap,ts=trange)[1]
    # res_diag=res[-1].ptrace(0).diag()
    # g2numoccu=[np.abs(res_diag[1]),np.abs(res_diag[2])]
    # ada=g2numoccu[0]+2*g2numoccu[1]
    # adad=2*g2numoccu[1]
    # g2num=g2fun(adad,ada) 
    res_state=res[-1]
    # ada=[(s*ad*a).tr() for s in res[1]]
    # adad=[(s*ad*ad*a*a).tr() for s in res[1]]
    g2num=g2fun((res_state*ad*ad*a*a).tr() , (res_state*ad*a).tr()) 
    # g2grad=-1j*commu(ham(D1,D2,psi,10*np.pi),res_state)+\
    #     kap/2*(a*res_state*ad-ad*a*res_state-res_state*ad*a)
    # g2grad2=-1j*commu(ham(D1,D2,psi,10*np.pi),g2grad)+\
    #     kap/2*(a*g2grad*ad-ad*a*g2grad-g2grad*ad*a)
    n1num=res_state.ptrace(0).diag()[1]
    
    res=1/n1num
    global glob_res
    if (not glob_res) or  res<glob_res:
        # g2res=g2num
        glob_res=res
    print(glob_res)
    return res


print("start")
t1=timer()
res=scp.optimize.differential_evolution(g2num,
    bounds=((-1,1),(-1,1),(0,2*np.pi)))
# res=scp.optimize.differential_evolution(g2num_mono,
#     bounds=((-1,1),))
t2=timer()
print(t2-t1)
print(res.x)
print(glob_res)