
from headers import *

qtp.settings.auto_tidyup = False




def load_Mathemaitca_data(filenames):
    res=[]
    for fn in filenames:
        fn_fullpath=str(Path(__file__).parent.parent/"shared_data"/fn)
        with open(fn_fullpath,"r") as datafile:
            data = eval(datafile.read().lower())
        res.append(data)
    return res



def calcg2(a,b):
    if a==0 or b==0:
        return 1
    if np.abs(np.abs(a)-a)>1e-12:
        print("<ad*ad*a*a> not real, <ad*ad*a*a>="+str(a)+"<ad*a>**2="+str(b))
    return np.abs((a/b)/b)

def generate_data(fn,dimHS,Delts,E0s):
    #load_ana
    ad,a=geOps(dimHS)[:2]
    res1_ana=load_Mathemaitca_data([fn+"_O1D2T1.txt"])[0][2]
    res2_ana=load_Mathemaitca_data([fn+"_O2D4T1.txt"])

    trange=res2_ana[0][1]
    res2_ana=res2_ana[0][2]

    #num
    print("num sim start")
    t1=timer()
    res_num=evoNum2(dimHS,Delts=Delts,E0s=E0s,g0=0.3,kap=1/50,ts=trange)[1]
    print("num sim finished in: "+str(timer()-t1)+"s")


    trange=[round(t/(2*np.pi),5) for t in trange]


    num1=[s.ptrace(0).diag()[1] for s in res_num]
    num2=[s.ptrace(0).diag()[2] for s in res_num]
    ada=[(s*ad*a).tr() for s in res_num]
    adad=[(s*ad*ad*a*a).tr() for s in res_num]

    g2num=[calcg2(adad[k], ada[k]) for k in range(len(ada))]

    g2ana=[calcg2(2*res2_ana[k],(res1_ana[k]+2*res2_ana[k])) \
        for k in range(len(res1_ana))]

    # min_ind=trange.index(5.)
    # ming2=g2num[min_ind]
    # print(ming2)
    # print(g2ana[min_ind])
    return [trange,num1,num2,g2num,res1_ana,res2_ana,g2ana]

def generate_data2(fn,dimHS,Delts,E0s):
    #load_ana
    ad,a=geOps(dimHS)[:2]
    res1_ana=load_Mathemaitca_data([fn+"_O1D2T1.txt"])[0][2]
    res2_ana=load_Mathemaitca_data([fn+"_O2D4T1.txt"])

    trange=res2_ana[0][1]
    res2_ana=res2_ana[0][2]

    res1_ana3=load_Mathemaitca_data([fn+"_O1D2T3.txt"])[0][2]
    res2_ana3=load_Mathemaitca_data([fn+"_O2D4T3.txt"])[0][2]

    #num
    print("num sim start")
    t1=timer()
    res_num=evoNum2(dimHS,Delts=Delts,E0s=E0s,g0=0.3,kap=1/50,ts=trange)[1]
    print("num sim finished in: "+str(timer()-t1)+"s")


    trange=[round(t/(2*np.pi),5) for t in trange]


    # num1=[s.ptrace(0).diag()[1] for s in res_num]
    # num2=[s.ptrace(0).diag()[2] for s in res_num]
    ada=[(s*ad*a).tr() for s in res_num]
    adad=[(s*ad*ad*a*a).tr() for s in res_num]

    g2num=[calcg2(adad[k], ada[k]) for k in range(len(ada))]

    g2ana=[calcg2(2*res2_ana[k],(res1_ana[k]+2*res2_ana[k])) \
        for k in range(len(res1_ana))]

    g2ana3=[calcg2(2*res2_ana3[k],(res1_ana3[k]+2*res2_ana3[k])) \
        for k in range(len(res1_ana3))]
    # min_ind=trange.index(5.)
    # ming2=g2num[min_ind]
    # print(ming2)
    # print(g2ana[min_ind])
    return [trange,g2num,g2ana,g2ana3]

def plot_g2t():

    filename=str(Path(__file__).parent/"param_vs_res.xlsx")
    df_cur= pd.read_excel(filename, 't_mono', skiprows = 1, usecols = 'A:I' )


    df_main=df_cur.loc[(df_cur['note']=='g0=0.3') ,:]
    # df_main2=df_cur.loc[(df_cur['note']=='g0=0.35') ,:]
    df_main2=df_cur.loc[(df_cur['note']=='g0=0.4') ,:]
    df_main3=df_cur.loc[(df_cur['note']=='g0=0.5') ,:]
    df_main4=df_cur.loc[(df_cur['note']=='g0=0.6') ,:]


    dfs=[df_main,df_main2,df_main3,df_main4]

    return dfs

def plot_rawOptimize(recal=False):
    if (not recal) and os.path.exists("plot_rawOptimize.qu"):
        return qtp.qload("plot_rawOptimize")

    data_fn_mono="monochrom_fin"
    data_fn_bi="bichrom_fin1"

    data_fn=[data_fn_mono,data_fn_bi]
    dimHS=[6,15]
    Delts=[[-0.0395255],[-0.0192947,-0.0282437]]
    E0s=[[1/200],[1/200,1/200*np.exp(1j*2.83667)]]
    

    res=[]

    for j in range(2):
        res.append(generate_data(data_fn[j],dimHS,Delts[j],E0s[j]))

    qtp.qsave(res,"plot_rawOptimize")

    return res

def plot_g2kap():
    filename=str(Path(__file__).parent/"param_vs_res.xlsx")
    df_cur= pd.read_excel(filename, 'kap (2)', skiprows = 1, usecols = 'A:I' )

    df_main=df_cur.loc[(df_cur['note']=='ok') ,:]
    df_main2=df_cur.loc[(df_cur['note']=='10T') ,:]


    dfs=[df_main,df_main2]
    return dfs


def plot_flat(recal=False):
    if (not recal) and os.path.exists("plot_flat.qu"):
        return qtp.qload("plot_flat")
    data_fn="bichrom_fin_flat"
    dimHS=[6,15]
    Delts=[0.0165539,-0.0364786]
    E0s=[1/200,1/200*np.exp(1j*1.4571)]
    res=generate_data(data_fn,dimHS,Delts,E0s)
    qtp.qsave(res,"plot_flat")
    return res

def plot_flatLong(recal=False):
    if (not recal) and os.path.exists("plot_flatLong.qu"):
        return qtp.qload("plot_flatLong")
    # trange1=np.arange(0,9.7*np.pi+1e-10,np.pi/500)
    # trange2=np.arange(9.7*np.pi,9.9*np.pi+1e-10,np.pi/500)
    # trange3=np.arange(9.9*np.pi,10.1*np.pi+1e-10,np.pi/500)
    # trange4=np.arange(10.1*np.pi,10.3*np.pi+1e-10,np.pi/500)
    # trange5=np.arange(10.3*np.pi,30*np.pi+1e-10,np.pi/500)

    # E0=1/200
    # dimHS=[6,15]

    # psis=[1.16299,1.27777,1.38517,1.39,1.43738]
    # Delts=[[0.0350393,-0.0305869],[0.0289436,-0.031973],[0.019331,-0.0363201],[0.0161113,-0.0385392],[0.0112186,-0.0412956]]

    trange1=np.arange(0,10*np.pi+1e-10,np.pi/500)
    trange2=np.arange(10*np.pi,40*np.pi+1e-10,np.pi/500)
    E0=1/200
    dimHS=[6,15]
    
    psis=[1.4571,0]
    Delts=[[0.0165539,-0.0364786],[0,0]]
    E0s=[1/200,0]

    print("sim start")
    res=evoNumTwoStep(dimHS,Delts=Delts,E0s=[[E0s[j],E0s[j]*np.exp(1j*psis[j])] for j in range(len(psis))],\
        g0=0.3,kap=0.02,ts=[trange1,trange2])
    print("sim1 finished")
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


    g2num=[calcg2(adad[j], ada[j]) for j in range(len(ada))]

    res1=[trange,num1,num2,g2num]
    # trange0=np.arange(0*np.pi,30*np.pi+1e-10,np.pi/500)
    # res2=[trange0]
    # for j in range(len(Delts)):
    #     print("sim start")
    #     res=evoNum2(dimHS,Delts=Delts[j], E0s=[1/200,1/200*np.exp(1j*psis[j])], g0=0.3,kap=0.02,ts=trange0)
    #     print("sim "+str(j+2)+" finished")

    #     # num3=[s.ptrace(0).diag()[3] for s in res[1]]
    #     ada=[(s*ad*a).tr() for s in res[1]]
    #     adad=[(s*ad*ad*a*a).tr() for s in res[1]]
    #     g2num=[calcg2(adad[j], ada[j]) for j in range(len(ada))]
    #     res2.append(g2num)
    
    # res2[0]=[round(t/(2*np.pi),5) for t in res2[0]]

    qtp.qsave(res1,"plot_flatLong")
    return res1

def plot_highN1(recal=False):
    if (not recal) and os.path.exists("plot_highN1.qu"):
        return qtp.qload("plot_highN1")

    data_fn="bichrom_fin_flat_n1_E200"
    dimHS=[10,25]
    Delts=[0.0324604,-0.0412605]
    E0s=[1/200,0.00482857*np.exp(1j*0.847036)]
    data1=generate_data(data_fn,dimHS,Delts,E0s)

    data_fn="bichrom_fin_flat_n1_E50"
    dimHS=[6,15]
    Delts=[0.0324604,-0.0412605]
    E0s=[1/50,4*0.00482857*np.exp(1j*0.847036)]
    data2=generate_data(data_fn,dimHS,Delts,E0s)

    res=[data1,data2]
    qtp.qsave(res,"plot_highN1")
    return res


def plot_mechdiss():
    filename=str(Path(__file__).parent/"param_vs_res.xlsx")
    df_cur= pd.read_excel(filename, 'mech_dissip', skiprows = 1, usecols = 'A:D' )

    df_cur=df_cur.loc[(df_cur['gam']!=0) ,:]

    df_main1=df_cur.loc[(df_cur['nb']==0) ,:]
    df_main2=df_cur.loc[(df_cur['nb']==0.1) ,:]
    df_main3=df_cur.loc[(df_cur['nb']==1) ,:]
    df_main4=df_cur.loc[(df_cur['nb']==10) ,:]

    return [df_main1,df_main2,df_main3,df_main4]

def plot_thermalInit():
    filename=str(Path(__file__).parent/"param_vs_res.xlsx")
    df_cur= pd.read_excel(filename, 'therm_init', skiprows = 1, usecols = 'A:D' )

    df_cur=df_cur.loc[(df_cur['nm']!=0) ,:]
    return df_cur

def plot_theoryError_old(recal=False):
    if (not recal) and os.path.exists("plot_theoryError.qu"):
        return qtp.qload("plot_theoryError")
    data=[]
    for E0 in [1/1000,1/500,1/200,1/100,1/50,1/30]:
        data.append(generate_data2("bichrom_fin_flat_E"+str(int(1/E0)),[6,15],[0.0165539,-0.0364786],[E0,E0*np.exp(1j*1.4571)]))
        print(str(int(1/E0))+" ready")
    qtp.qsave(data,"plot_theoryError")
    return data

def plot_theoryError():
    filename=str(Path(__file__).parent/"param_vs_res.xlsx")
    df_cur= pd.read_excel(filename, 'E0', skiprows = 1, usecols = 'A:K' )

    df_main=df_cur.loc[(df_cur['note']=='ok') ,:]

    return df_main