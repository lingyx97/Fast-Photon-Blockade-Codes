from geOps import geOps
import numpy as np
import qutip as qtp


def evoNum(dimHS,Delts=[-1/2],E0s=[1/50],g0=1/2,kap=1/50,ts=[],corr_tau=False):
    ad,a,bd,b,idMat,initS=geOps(dimHS,[0,0])

    wm=1
    wc=2*wm
    kap=kap*wm
    
    E0s=[E0*wm for E0 in E0s]
    Delts=[Delt*wm for Delt in Delts]

    g0=g0*wm

    period=2*np.math.pi/wm

    times=np.arange(0,20*period,period/100)
    if len(ts)>0:
        times=ts

    
    argsEName=['E0'+str(j) for j in range(len(E0s))]
    argsEdName=['E0d'+str(j) for j in range(len(E0s))]
    argsDName=['Delt'+str(j) for j in range(len(E0s))]
    
    def ham(g0):
            H0=wc*ad*a+wm*bd*b-g0*ad*a*(bd+b)
            if len(Delts)==1:
                  Delt=Delts[0]
                  E0=E0s[0]
                  H1=-(wc+Delt)*ad*a+E0*(ad+a)
                  return H0+H1
            HI1=[[ad, argsEName[j]+' * exp( -1j * ( wc + '+argsDName[j]+' ) * t )'] for j in range(len(Delts))]
            HI2=[[a, argsEdName[j]+' * exp( 1j * ( wc + '+argsDName[j]+' ) * t )'] for j in range(len(Delts))]
            return  [H0, *HI1, *HI2] #concat lists

    argsName=[*argsEName,*argsEdName,*argsDName,'wc']
    argsVal=[*E0s,*[np.conj(e) for e in E0s],*Delts, wc]
    args=dict(zip(argsName, argsVal))

    tol=1e-10
    res=qtp.mesolve(ham(g0),initS,times,[np.sqrt(kap)*a],[],args=args,
        progress_bar=True,
        options=qtp.Options(atol=tol,rtol=tol,
            nsteps=10**9,norm_tol=tol))
    res=res.states
    
    res2=[]
    if corr_tau:
        res2=qtp.correlation_4op_2t(ham(g0),initS,times,corr_tau,[np.sqrt(kap)*a],ad,ad,a,a,args=args,
            options=qtp.Options(atol=tol,rtol=tol,
                nsteps=10**9,norm_tol=tol))


    times=np.array([t/(2*np.pi) for t in times])

    return [times,res,res2]


def evoNum2(dimHS,Delts=[-1/2],E0s=[1/50],g0=1/2,kap=1/50,ts=[],gam=[0,0]):
    ad,a,bd,b,idMat,initS=geOps(dimHS,[0,0])

    wm=1
    wc=2*wm
    kap=kap*wm
    
    # thermal_occu=1e-0
    # initS=qtp.tensor(qtp.thermal_dm(dimHS[0],0),qtp.thermal_dm(dimHS[1],thermal_occu))

    E0s=[E0*wm for E0 in E0s]
    Delts=[Delt*wm for Delt in Delts]

    g0=g0*wm

    period=2*np.math.pi/wm

    times=np.arange(0,20*period,period/500)
    if len(ts)>0:
        times=ts

    
    
    def ham(g0):
            H0=wc*ad*a+wm*bd*b-g0*ad*a*(bd+b)
            HI1=[ad, lambda t, args: sum([E0s[k]* np.exp( -1j *( Delts[k]+wc ) * t ) for k in range(len(Delts))]) ] 
            HI2=[a, lambda t, args: sum([np.conj(E0s[k])* np.exp( 1j * (Delts[k] +wc) * t ) for k in range(len(Delts))]) ]
            return  [H0,HI1, HI2] #concat lists

    tol=1e-10
    loss_ops=[np.sqrt(kap)*a]
    if gam[0]:
        nb=gam[1]
        gam=gam[0]
        loss_ops.append(np.sqrt(gam*(nb+1))*(b-g0/wm*ad*a))
        if nb:
            loss_ops.append(np.sqrt(gam*nb)*(bd-g0/wm*ad*a))
            loss_ops.append(np.sqrt(4*gam*g0**2/(wm**2*np.log(1+1/nb)))*(ad*a))

    res=qtp.mesolve(ham(g0),initS,times,loss_ops,[],args={},
        options=qtp.Options(atol=tol,rtol=tol,
            nsteps=10**9,norm_tol=tol))
    res=res.states

    times=np.array([t/(2*np.pi) for t in times])

    return [times,res]

def evoNumTwoStep(dimHS,Delts,E0s,g0,kap,ts):
    ad,a,bd,b,idMat,initS=geOps(dimHS,[0,0])

    wm=1
    wc=2*wm
    kap=kap*wm
    g0=g0*wm
    period=2*np.math.pi/wm

    res_cur=[]
    times_cur=[]
    times=[]

    for i in range(len(Delts)):
        E0s_cur=[E0*wm for E0 in E0s[i]]
        Delts_cur=[Delt*wm for Delt in Delts[i]]


        if len(ts[i])>0:
            times=ts[i]

        times_tmp=times-times[0]
        psi_cur=[(Delts_cur[k]*times[0])%(2*np.pi) for k in range(len(Delts_cur))]
        
        def ham(g0):
                H0=wc*ad*a+wm*bd*b-g0*ad*a*(bd+b)
                HI1=[ad, lambda t, args: sum([E0s_cur[k]* np.exp( -1j * (wc*t+Delts_cur[k] * t + psi_cur[k]) ) for k in range(len(Delts_cur))]) ] 
                HI2=[a, lambda t, args: sum([np.conj(E0s_cur[k])* np.exp( 1j *(wc*t+ Delts_cur[k] * t + psi_cur[k])) for k in range(len(Delts_cur))]) ]
                return  [H0,HI1, HI2] #concat lists

        tol=1e-10
        res=qtp.mesolve(ham(g0),initS,times_tmp,[np.sqrt(kap)*a],[],args={},
            options=qtp.Options(atol=tol,rtol=tol,
                nsteps=10**9,norm_tol=tol)).states
        res_cur=[*res_cur,*(res[:-1])]
        initS=res[-1]
        times_cur=[*times_cur,*([t/period for t in times[:-1]])]
        # print(times_cur)

    res_cur.append(initS)
    times_cur.append(times[-1]/period)
    # print(len(res_cur))
    # print(len(times_cur))
    return [times_cur,res_cur]