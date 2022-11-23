from headers import *


def benchmarks(dimHS,Delt=-1/2):
      ad,a,bd,b,idMat,initS=geOps(dimHS,[0,0])
      
      wm=1
      wc=2*wm
      kap=1/20
      E0=1/20
      g0=1/2*wm
      Delt=Delt*wm

      Ham=-Delt*ad*a+wm*bd*b-g0*ad*a*(bd+b)+E0*(ad+a)
      
      tol=1e-10
      maxiter=10000
      t1=timer()
      res1=qtp.steadystate(Ham,[np.sqrt(kap)*a], method='power', use_rcm=True,
                          maxiter=maxiter,tol=tol)
      t2=timer()
      res2=qtp.steadystate(Ham,[np.sqrt(kap)*a], method='eigen', use_rcm=True,
                          maxiter=maxiter,tol=tol)
      t3=timer()
      print("eigen:")
      print(t3-t2)
      print("power:")
      print(t2-t1)
      print(qtp.fidelity(res1,res2))
      print(res1.tr())
      return

def main(dimHS,Delt=-1/2):
      ad,a,bd,b,idMat,initS=geOps(dimHS,[0,0])
      
      wm=1
      wc=2*wm
      kap=1/50
      E0=1/200
      g0=1/2*wm
      Delt=Delt*wm

      Ham=-Delt*ad*a+wm*bd*b-g0*ad*a*(bd+b)+E0*(ad+a)

      
      tol=1e-10
      maxiter=10000
      
      res=qtp.steadystate(Ham,[np.sqrt(kap)*a], method='power', use_rcm=True,
                          maxiter=maxiter,tol=tol) 
      
      return res

def g20(state):
      dimHS=state.dims[0]
      ad,a=geOps(dimHS)[:2]
      
      expct_ada=(ad*a*state).tr()
      expct_ada2=(ad*ad*a*a*state).tr()
      g20=expct_ada2/expct_ada**2
      if g20!=abs(g20):
            print("g2 func not real number:",end=" ")
            print(g20-abs(g20))
      return g20
      
# res=[]
# Delts=np.arange(-1,1.01,0.1)
# for i in Delts:
#       res1=main([15,15],i)
#       print(i/21)
#       res.append(res1)
# qtp.qsave(res,"steadystates_k20e20_d15x15")
tmp=main([15,15],-0.25)
print(tmp.ptrace(0))
print(g20(tmp))
# plot_g2=False
# if plot_g2:
#       res=qtp.qload("steadystates_k20e20_d15x15")

      

#       g20s=[g20(s) for s in res]
#       plt.plot(Delts, g20s)
#       plt.xlabel("driving detuning")
#       plt.ylabel("g2(0)")

#       # plt.legend()
#       plt.show()

