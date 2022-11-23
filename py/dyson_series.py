from headers import *
print("start")

qtp.settings.auto_tidyup = False

def dyson_2_integrand(t,t1,t2):
      tmp1=g0**2*(np.cos(t1-t2)-1)-kap*t+kap*(t1+t2)/2
      tmp2=(g0**2+Delt)*(t1-t2)-g0**2*np.sin(t1-t2)
      return 2*E0**2*np.exp(tmp1)*np.cos(tmp2)
def dyson_2_num(t):
      res=scp.integrate.nquad(lambda t2,t1:dyson_2_integrand(t,t1,t2),[lambda t1:[0,t1],[0,t]])[0]
      return res


def dyson_2_taylor(t,order):
    t1=8*E0**2*g0**(2*order)*np.exp(-g0**2-kap*t/2)
    t2=np.math.factorial(order)*np.abs(kap+2j*Delt+2j*g0**2-2j*order)**2
    t3=np.math.cosh(kap*t/2)-np.math.cos(order*t-g0**2*t-Delt*t)
    res=t1/t2*t3
    return res
def dyson_2_ana(t,orders):
    res=[]
    for i in range(max(orders)+1):
        res.append(dyson_2_taylor(t,i))
    return [sum(res[:od+1]) for od in orders]

tfin=20*2*np.pi

def load_Mathemaitca_data(filenames):
    res=[]
    for fn in filenames:
        fn_fullpath=str(Path(__file__).parent.parent/"shared_data"/fn)
        with open(fn_fullpath,"r") as datafile:
            data = eval(datafile.read().lower())
        res.append(data)
    return res
def g2fun(a,b):
    if a==0 or b==0:
        return 1
    if np.abs(np.abs(a)-a)>1e-12:
        print("<ad*ad*a*a> not real, <ad*ad*a*a>="+str(a)+"<ad*a>**2="+str(b))
    return np.abs((a/b)/b)
# orders=[1]




TAYLOR=False
if TAYLOR:
    def diff(x,y):
        # return np.abs(2*np.arctan(y/x)-np.pi/2)
        return np.abs(x-y)/y
        # return 2*np.abs(x-y)/(x+y)
    dimHS=[5,10]
    g0=1/5
    kap=1/50
    E0=1/100
    for Delt in [-1,-0.8,-0.5,0,0.2,0.5,0.8,1]:
    # for Delt in [0.8]:
        trange=np.arange(0,30*np.pi,np.pi/50)
        res2=[dyson_2_ana(t,[1]) for t in trange]
        res=evoNum(dimHS,Delts=[Delt],E0s=[E0],g0=g0,kap=kap,ts=trange)[1]
        trange=[t/(2*np.pi) for t in trange]
        fin1=[s.ptrace(0).diag()[1] for s in res]
        fin2=[j[0] for j in res2]
        # plt.plot(trange,fin1,label="1")
        # plt.plot(trange,fin2,label="2")
        plt.plot(trange,[diff(fin2[j],fin1[j]) for j in range(len(fin1))],label=str(Delt))
    
    plt.legend()
    plt.show()
    exit()


ANA=False
T3=False

data_fn="chrom2_series2_test"
if ANA:
    res1=load_Mathemaitca_data([data_fn+"_O1D2T1.txt"])
    # res1Corr=load_Mathemaitca_data(["chrom2_samp3_O1D4T2.txt"])
    # res1Corr2=load_Mathemaitca_data(["chrom2_samp3_O1D5T2.txt"])
    res1f=[res1[0][2][j] for j in range(len(res1[0][2]))]
    # res1f=[res1[0][2][j]+res1Corr[0][2][j]+res1Corr2[0][2][j] for j in range(len(res1[0][2]))]

    res2=load_Mathemaitca_data([data_fn+"_O2D4T1.txt"])

    
    if T3:
        res1T3=load_Mathemaitca_data([data_fn+"_O1D2T3.txt"])
        res1T3f=[res1T3[0][2][j] for j in range(len(res1T3[0][2]))]
        # res2T3=load_Mathemaitca_data(["test_samp_O2D4T3.txt"])
        res2T3=load_Mathemaitca_data([data_fn+"_O2D4T3.txt"])

    trange=res2[0][1]
else:
    trange=np.arange(0,500*np.pi+1e-5,np.pi/500)
dimHS=[6,15]


# trange=np.arange(0,30*np.pi,np.pi/50)
#samp1
#res=evoNum2(dimHS,Delts=[-0.06782333400030592,-0.04452557213011663],
#    E0s=[1/200,1/200*np.exp(1j*4.362222545984987)],g0=1/3,kap=1/50,ts=trange)
#samp2
E0=1/200
kap=0.02
E0_factor=10
t_op=5.
PLOT_NUM3=False

#t1=timer()###############################
# res=evoNum2(dimHS,Delts=[0.0165539,-0.0364786],
#     E0s=[E0,E0 *np.exp(1j*1.4571)],
#     g0=0.3,kap=kap,ts=trange, gam=[0,0])

res=evoNum2(dimHS,Delts=[-0.25],E0s=[E0],g0=0.5,kap=kap,ts=trange, gam=[0,0])
PLOT_DIFF=0

trange=[round(t/(2*np.pi),5) for t in trange]
#############################################
min_ind=trange.index(t_op)

num1=[s.ptrace(0).diag()[1] for s in res[1]]
num2=[s.ptrace(0).diag()[2] for s in res[1]]
if PLOT_NUM3:
    num3=[s.ptrace(0).diag()[3] for s in res[1]]



ad,a=geOps(dimHS)[:2]
# ada=[(s*ad*a).tr() for s in res[1]]
# adad=[(s*ad*ad*a*a).tr() for s in res[1]]
ada=[num1[j]+2*num2[j] for j in range(len(num1))]
adad=[2*num2[j] for j in range(len(num2))]


g2num=[g2fun(adad[j], ada[j]) for j in range(len(ada))]
if PLOT_NUM3:
    g2numApprox=[g2fun(2*num2[j],num1[j]+2*num2[j]) for j in range(len(ada))]
#print(timer()-t1)###############################################
if ANA:
    g2ana=[g2fun(2*res2[0][2][j],(res1f[j]+2*res2[0][2][j])) for j in range(len(res1f))]
    if T3:
        g2anaT3=[g2fun(2*res2T3[0][2][j],(res1T3f[j]+2*res2T3[0][2][j])) for j in range(len(res1T3f))]


ming2=g2num[min_ind]
print(ming2)

PRINT_WIDTH=False
NUM1_WIDTH=False
error_ranges=[0.005,0.006,0.007,0.008,0.009,0.01]
if PRINT_WIDTH:
    num1_ming2=num1[min_ind]
    if NUM1_WIDTH:
        for pct in error_ranges:
            #num1
            maxpct=1+pct
            minpct=1-pct

            plat_beg=min_ind-1
            plat_end=min_ind+1
            while num1[plat_beg]<=num1_ming2*maxpct and num1[plat_beg]>=num1_ming2*minpct:
                plat_beg-=1
            while num1[plat_end]<=num1_ming2*maxpct and num1[plat_end]>=num1_ming2*minpct:
                plat_end+=1
            print(trange[plat_end-1]-trange[plat_beg+1])

    for pct in error_ranges:
        #g2num
        maxpct=1+pct
        minpct=1-pct

        plat_beg=min_ind-1
        plat_end=min_ind+1
        while g2num[plat_beg]<=ming2*maxpct and g2num[plat_beg]>=ming2*minpct:
            plat_beg-=1
        while g2num[plat_end]<=ming2*maxpct and g2num[plat_end]>=ming2*minpct:
            plat_end+=1
        print(trange[plat_end-1]-trange[plat_beg+1])


if ANA:
    print(g2ana[min_ind])
    if T3:
        print(g2anaT3[min_ind])
# exit()

# qtp.qsave(g2num,"tmp2")
PLOT=1

if PLOT:
    def pairwise_add(*list1):
        return [sum(t) for t in zip(*list1)]

    if PLOT_DIFF:
        data=[np.abs(g2ana[j]-g2num[j])/g2num[j] for j in range(len(g2ana))]
        plt.plot(trange,data,
            label=r"$\delta g^{(2)}$ Taylor=1",linestyle="dashed",alpha=0.5)
        if T3:
            plt.plot(trange,[np.abs(g2anaT3[j]-g2num[j])/g2num[j] for j in range(len(g2ana))],
                label=r"$\delta g^{(2)}$ Taylor=3",linestyle="dashed",alpha=0.5)
        seaborn.set(style='ticks')
        plt.grid(True, which='both')
        seaborn.despine(offset=0) # the important part here
        
        plt.xlim([0,11])
        plt.ylim([10**-20,10**-5])
        plt.yscale('log')
        
        plt.legend()
        plt.show()
        exit()


    if ANA:
        plt.plot(trange,res1f,label=r"$n_1$ (ana)",alpha=0.5,linestyle="dashed")
        plt.plot(trange,res2[0][2],label=r"$n_2$ (ana)",alpha=0.5,linestyle="dashed")
        if T3:
            plt.plot(trange,res2T3[0][2],label="Ana2T3",alpha=0.5,linestyle="dotted")
            plt.plot(trange,res1T3f,label="Ana1T3",alpha=0.5,linestyle="dotted")

    plt.plot(trange,num1,label=r"$n_1$ (num)",alpha=0.5,linestyle="solid")
    plt.plot(trange,num2,label=r"$n_2$ (num)",alpha=0.5,linestyle="solid")
    if PLOT_NUM3:
        plt.plot(trange,num3,label=r"$n_3$ (num)",alpha=0.5,linestyle="solid")
        plt.plot(trange,g2numApprox,label=r"$g^{(2)}$ (approx)",linestyle="dashed",alpha=0.5)

    UNEQ_TIME_CORR=False
    if UNEQ_TIME_CORR:
        res_corr=np.transpose(res[2])
        adas=[ada,ada[1:],ada[9:]]
        for i in range(len(res_corr)):
            plt.plot(trange[:-100],np.divide(np.divide(res_corr[i],ada)[:-100],adas[i][:-100]),
                label="g2"+str(i),alpha=0.5,linestyle="dotted")
    # plt.plot(trange,num3,label="num3",alpha=0.5,linestyle="solid")

    if ANA:
        plt.plot(trange,g2ana,label=r"$g^{(2)}$ (ana)",linestyle="dashed",alpha=0.5)
        if T3:
            plt.plot(trange,g2anaT3,label="g2anaT3",linestyle="dashed",alpha=0.5)
            
    plt.plot(trange,g2num,label=r"$g^{(2)}$ (num)",linestyle="solid",alpha=0.5)

    seaborn.set(style='ticks')
    plt.grid(True, which='both')
    seaborn.despine(offset=0) # the important part here


    # plt.plot(trange,[10**-4 for t in trange])

    # plt.ylim([0,1.2*max(g2num)])
    plt.xlim([0,trange[-1]])
    #Zoom
    # plt.xlim([9,11])
    # plt.ylim([0,2.1*10**-2])

    #Log-scale
    plt.ylim([10**-10,1.2*max(g2num)])
    # plt.ylim([0.99*ming2,1.01*ming2])
    plt.yscale('log')

    plt.title(r"bichromatic $g_0=0.3$")

    plt.legend(loc='lower center')
    plt.show()