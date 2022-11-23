from headers import *

qtp.settings.auto_tidyup = False

def g2fun(a,b):
    if a==0 or b==0:
        return 1
    if np.abs(np.abs(a)-a)>1e-12:
        print("<ad*ad*a*a> not real, <ad*ad*a*a>="+str(a)+"<ad*a>**2="+str(b))
    return np.abs((a/b)/b)

trange1=np.arange(0,9.7*np.pi+1e-10,np.pi/500)
trange2=np.arange(9.7*np.pi,9.9*np.pi+1e-10,np.pi/500)
trange3=np.arange(9.9*np.pi,10.1*np.pi+1e-10,np.pi/500)
trange4=np.arange(10.1*np.pi,10.3*np.pi+1e-10,np.pi/500)
trange5=np.arange(10.3*np.pi,30*np.pi+1e-10,np.pi/500)

E0=1/200
dimHS=[6,15]
#t1=timer()###############################9.6,9.8,10,10.2,10.4
#Delts=[[0.0269944,-0.0314661],[0.0224274,-0.0339494],[0.019331,-0.0363201],[0.0161113,-0.0385392],[0.0113976,-0.0416153]]
# psis=[1.35,1.38522,1.38517,1.39,1.41]1.48706[0.0118163,-0.0393591]

psis=[1.16299,1.27777]#,1.38517,1.39,1.43738]
Delts=[[0.0350393,-0.0305869],[0.0289436,-0.031973],[0.019331,-0.0363201],[0.0161113,-0.0385392],[0.0112186,-0.0412956]]
res=evoNumTwoStep(dimHS,Delts=Delts,
   E0s=[[E0,E0*np.exp(1j*psi)] for psi in psis],
   g0=0.3,kap=0.02,ts=[trange1,trange2,trange3,trange4,trange5])
# res=evoNumTwoStep(dimHS,Delts=[[-0.0764175]],
#    E0s=[[1/200]],
#    g0=0.3,kap=0.02,ts=[trange])

trange=res[0]
trange=[round(t,5) for t in trange]


num1=[s.ptrace(0).diag()[1] for s in res[1]]
num2=[s.ptrace(0).diag()[2] for s in res[1]]


ad,a=geOps(dimHS)[:2]
ada=[np.real((s*ad*a).tr()) for s in res[1]]
adad=[np.real((s*ad*ad*a*a).tr()) for s in res[1]]


g2num=[g2fun(adad[j], ada[j]) for j in range(len(ada))]


plt.plot(trange,num1,label=r"$n_1$ (num)",alpha=0.5,linestyle="solid")
plt.plot(trange,num2,label=r"$n_2$ (num)",alpha=0.5,linestyle="solid")


plt.plot(trange,g2num,label=r"$g^{(2)}$ (num)",linestyle="solid",alpha=0.5)


trange0=np.arange(0*np.pi,30*np.pi+1e-10,np.pi/500)
linestyles=["dotted","dotted","dashed","dotted","dotted"]
for j in range(len(Delts)):
    res=evoNum2(dimHS,Delts=Delts[j], E0s=[1/200,1/200*np.exp(1j*psis[j])], g0=0.3,kap=0.02,ts=trange0)
    
    trange=[round(t/(2*np.pi),5) for t in trange0]
    # num3=[s.ptrace(0).diag()[3] for s in res[1]]
    ada=[(s*ad*a).tr() for s in res[1]]
    adad=[(s*ad*ad*a*a).tr() for s in res[1]]
    g2num=[g2fun(adad[j], ada[j]) for j in range(len(ada))]
    plt.plot(trange,g2num,linestyle=linestyles[j],alpha=0.8)


seaborn.set(style='ticks')
plt.grid(True, which='both')
seaborn.despine(offset=0)


plt.ylim([10**-15,1.2*max(g2num)])
plt.yscale('log')


plt.legend()
plt.show()