from headers import *

qtp.settings.auto_tidyup = False


def calcg2(a,b):
    if a==0 or b==0:
        return 1
    if np.abs(np.abs(a)-a)>1e-12:
        print("<ad*ad*a*a> not real, <ad*ad*a*a>="+str(a)+"<ad*a>**2="+str(b))
    return np.abs((a/b)/b)

def generate_data(dimHS,Delts,E0s):
    #load_ana
    ad,a=geOps(dimHS)[:2]
    trange=np.arange(0,12*np.pi,np.pi/50)
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


    # min_ind=trange.index(5.)
    # ming2=g2num[min_ind]
    # print(ming2)
    # print(g2ana[min_ind])
    return [trange,num1,num2,g2num]


dimHS=[10,25]

# Delts=[0.0165539,-0.0364786]
# E0s=[1/200,1/200*np.exp(1j*1.4571)]
# res=generate_data(dimHS,Delts,E0s)
Delts_raw=[-0.0192947,-0.0282437]
E0s_raw=[1/200,1/200*np.exp(1j*2.83667)]

mult=10
Delts=[0.0324604,-0.0412605]

E0s_1=[1/200,0.00482857*np.exp(1j*0.847036)]

E0s_2=[E0*mult for E0 in E0s_1]

RECAL=0
if (not RECAL) and os.path.exists("plot_tmp.qu"):
    datas=qtp.qload("plot_tmp")
else:
    data1=generate_data(dimHS,Delts_raw,E0s_raw)
    data2=generate_data(dimHS,Delts,E0s_1)
    data3=generate_data(dimHS,Delts,E0s_2)
    datas=[data1,data2,data3]
    qtp.qsave(datas,"plot_tmp")

labels=["(1)","(2)","(3)"]
colors=["red","orange","blue"]

for j in range(len(datas)):
    plt.plot(datas[j][0],datas[j][1],label=labels[j],color=colors[j])
    plt.plot(datas[j][0],datas[j][3],color=colors[j],linestyle="dashed")


plt.grid(True, which='both')
seaborn.despine(offset=0)

plt.xlim([0,6])
plt.ylim([10**-5,1.2])
plt.yscale('log')

plt.xticks( )
plt.yticks( )
plt.xlabel("mechanical periods" )
plt.legend(loc='lower center',prop={ 'size': 20})

plt.show()
