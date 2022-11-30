from headers import *
from final_plots_helper import *
from matplotlib import ticker
from mpl_toolkits.axes_grid1.inset_locator import inset_axes
print("start")
plt.rc('font', size=20)
plt.rc('xtick',labelsize=18)
plt.rc('ytick',labelsize=18)
plt.rcParams['axes.axisbelow'] = True
qtp.settings.auto_tidyup = False


lw=4 #curve linewidth
pts=60 #scatter point size

plt.figure(figsize=(8.0, 6.0))

PLOT=9
# 1: g2_vs_t, 
# 2: bichrom+singchrom
# 3: g2_vs_kap
# 4: flat
# 5: longer flat
# 6: high n1
# 7: mech_diss
# 8: thermal_init
# 9: theory_error
def genColors(N):
    inds=np.linspace(0,1,N+1)
    cmap=cm.get_cmap("gnuplot2")
    return [cmap(i) for i in inds]
if PLOT==1:
    dfs=plot_g2t()
    # colors=plt.cm.get_cmap('hsv', 10*len(dfs))
    markers=["x","o","v","*"]
    colors=genColors(4)
    labels=[r"$g_0=0.3\omega_m$",r"$g_0=0.4\omega_m$",r"$g_0=0.5\omega_m$",r"$g_0=0.6\omega_m$"]


    for k in range(len(dfs)):
        plt.scatter(dfs[k]["t"],dfs[k]["num"],label=labels[k],color=colors[k],marker=markers[k],s=pts)
    
    plt.xticks(range(3,16) )
    plt.yticks( )
    plt.xlabel("mechanical periods" )
    plt.ylabel("autocorrelation" )
    plt.grid()
    plt.legend(prop={ 'size': 20})
    plt.savefig("mono_driv_g2_vs_t.pdf",dpi=1000,bbox_inches='tight')

elif PLOT==2:
    

    data2, data1=plot_rawOptimize()

    data1=data1[:4]
    data2=data2[:4]

    labels1=[r"$p_1$", r"$p_2$",r"$g^{(2)}$",None,None,None]
    # labels2=[r"n1num", r"n2num",r"g2num",r"n1ana",r"n2ana",r"g2ana"]
    linestyles=["dashed","dotted","solid"]
    colors=genColors(3)

    fig, axs = plt.subplots(2, 1, gridspec_kw={'height_ratios': [1,1]},figsize=(8.0, 6.0))
    ax1, ax2 = axs


    for j in range(1,len(data1)):
        ax1.plot(data1[0],data1[j],alpha=0.5,\
            linestyle=linestyles[int((j-1))], color=colors[(j-1)%3],linewidth=lw)
    ax1.set_ylim([10**-12,1.2])

    
    for j in range(1,len(data2)):
        ax2.plot(data2[0],data2[j],label=labels1[j-1],alpha=0.5,\
            linestyle=linestyles[int((j-1))], color=colors[(j-1)%3],linewidth=lw)
    ax2.set_ylim([10**-12,1.2])

    for ax in axs:
         
        ax.grid(True, which='both')
        #grid at ticks
        ax.set_xlim([0,6])
        ax.set_yscale('log')
        ax.set_yticks([1e0,1e-2,1e-4,1e-6,1e-8,1e-10,1e-12])
        ax.set_yticklabels([r"$10^0$",r"",r"$10^{-4}$","",r"$10^{-8}$","",r"$10^{-12}$"])

        ax.tick_params(axis='both')
        # ax.set_ylabel("autocorrelation" )
    ax2.legend(loc='lower center',prop={ 'size': 20})
    ax2.set_xlabel("mechanical periods" )
    ax1.set_title("(a)" ,loc="left")
    ax2.set_title("(b)" ,loc="left")
    plt.tight_layout()
    plt.savefig("bi_driv_raw_optimize.pdf",dpi=1000,bbox_inches='tight')

elif PLOT==3:
    data1,data2=plot_g2kap()

    plt.ylim([3e-6,3e-2])
    plt.xlim([5e-3,0.105])
    plt.xticks(np.arange(0.01,0.101,0.01) )
    plt.ticklabel_format(axis="x",style='sci', scilimits= (0,0),\
        useMathText=True)
    plt.yticks()
    plt.yscale("log")
    plt.xlabel(r"cavity decay $\kappa/\omega_m$" )
    plt.ylabel("autocorrelation" )
    plt.grid(True, which='both')

    plt.scatter(data1["kap"],data1["num"],label=r"5T",s=pts)
    plt.scatter(data2["kap"],data2["num"],label=r"10T",marker="x",s=pts)
    # plt.scatter(data["kap"],data["Taylor1"],label="analytical",marker="x")
    
    
    plt.legend(prop={'size': 20})
    plt.savefig("g2_vs_kap.pdf",dpi=1000,bbox_inches='tight')

elif PLOT==4:
    data=plot_flat()
    data=data[:-3]
    labels=[r"$p_1$", r"$p_2$",r"$g^{(2)}$",None,None,None]
    linestyles=["dashed","dotted","solid"]
    
    colors=genColors(3)
    
    for j in range(1,len(data)):
        plt.plot(data[0],data[j],label=labels[j-1],alpha=0.5,\
            linestyle=linestyles[int((j-1))], color=colors[(j-1)%3],linewidth=lw)
        plt.ylim([10**-10,1.2])
     
    plt.grid(True, which='both')
 
    plt.xlim([0,6])
    plt.yscale('log')

    plt.xticks( )
    plt.yticks( )
    plt.xlabel("mechanical periods" )
    plt.legend(loc='lower center',prop={ 'size': 20})

    plt.savefig("bi_driv_flat_optimize.pdf",dpi=1000,bbox_inches='tight')

elif PLOT==5:
    data1=plot_flatLong(False)
    
    labels=[r"$n_1$", r"$n_2$",r"$g^{(2)}$"]
    for j in range(1,len(data1)):
        plt.plot(data1[0],data1[j],label=labels[j-1],linewidth=lw)
    # for j in range(1,len(data2)):
    #     plt.plot(data2[0],data2[j],linestyle="dotted",alpha=0.5)

     
    plt.grid(True, which='both')
    seaborn.despine(offset=0)

    plt.xlim([0,20])
    plt.ylim([10**-11,1.2])
    plt.yscale('log')
    plt.xticks( )
    plt.yticks( )
    plt.xlabel("mechanical periods" )
    plt.legend(loc='lower center',prop={ 'size': 20})

    plt.savefig("bi_driv_flat_concat.pdf",dpi=1000,bbox_inches='tight')

elif PLOT==6:
    data1,data2=plot_highN1()
    colors=["red","green","orange","blue"]
    plt.plot(data1[0],data1[1],label="(a)",color=colors[0],alpha=0.5)
    plt.plot(data1[0],data1[3],label="(b)",color=colors[1],alpha=0.5)
    plt.plot(data1[0],data1[4],linestyle="dashed",color=colors[0],alpha=0.5)
    plt.plot(data1[0],data1[6],linestyle="dashed",color=colors[1],alpha=0.5)
    plt.plot(data2[0],data2[1],label="(c)",color=colors[2],alpha=0.5)
    plt.plot(data2[0],data2[3],label="(d)",color=colors[3],alpha=0.5)
    plt.plot(data2[0],data2[4],linestyle="dashed",color=colors[2],alpha=0.5)
    
     
    plt.grid(True, which='both')
    seaborn.despine(offset=0)

    plt.xlim([0,6])
    plt.ylim([10**-5,1.2])
    plt.yscale('log')

    plt.xticks( )
    plt.yticks( )
    plt.xlabel("mechanical periods" )
    plt.legend(loc='lower center',prop={ 'size': 20})

    plt.savefig("bi_driv_highN1.pdf",dpi=1000,bbox_inches='tight')

elif PLOT==7:
    data=plot_mechdiss()

    
    colors=genColors(len(data))
    markers=["x","o","v","s"]
    labels=[r"$\bar{n}_b=0$",r"$\bar{n}_b=0.1$",r"$\bar{n}_b=1$",r"$\bar{n}_b=10$",r"$\bar{n}_b=10^2$"]
    for j in range(len(data)):
        plt.scatter(data[j]["gam"],data[j]["g2"],label=labels[j],\
            s=pts,color=colors[j],marker=markers[j])
        # plt.plot(data[j]["gam"],data[j]["deltg2"],linewidth=1,alpha=0.5)
    xlims=[1e-6,3e-2]
    plt.plot(xlims,[data[0]["g2"][1]*1.1,data[0]["g2"][1]*1.1],linestyle="dashed",color="black")

    # plt.xscale("symlog",linthreshx=10**-5)
    plt.xscale("log")
    plt.yscale("log")
    plt.xlim(xlims)
    plt.ylim([10**-4,3e-3])
    
    plt.ylabel(r"autocorrelation $g^{(2)}$" )
    
    plt.xticks( )
    plt.yticks( )
    plt.xlabel(r"mechanical decay rate $\gamma/\omega_m$" )
    plt.legend(loc='upper left',prop={ 'size': 20})

     
    plt.grid(True, axis="x",which='major')
    plt.grid(True, axis="y",which='both')

    plt.tight_layout()
    plt.savefig("mech_diss.pdf",dpi=1000,bbox_inches='tight')


elif PLOT==8:
    data=plot_thermalInit()

    plt.scatter(data["nm"],data["g2"],s=pts)
    # plt.plot(data["nm"],data["g2"],alpha=0.5,linewidth=lw)
    xlim=[8e-4,20]

    plt.plot(xlim,[data["g2"][1]*1.1,data["g2"][1]*1.1],linestyle="dashed",color="black")
    # plt.xscale("symlog",linthreshx=10**-3)
    plt.xscale("log")
    plt.yscale("log")
    plt.xlim(xlim)
    plt.ylim([10**-4,1.2*max(data["g2"])])
    
    
    plt.xlabel(r"phonoic occupation $\bar{n}_m$" )
    plt.ylabel(r"autocorrelation $g^{(2)}$" )
    #  
    # plt.grid(True, which='both')
    # seaborn.despine(offset=0)
    plt.xticks( )
    plt.yticks( )

    plt.grid(True, which='major')

    plt.tight_layout()
    # plt.show()
    plt.savefig("thermal_init.pdf",dpi=1000,bbox_inches='tight')
    
elif PLOT==9:
    data=plot_theoryError()

    ys=["num","num_gtilde","Taylor1","Taylor3"]
    clrs=genColors(4)
    lnstls=["o","x","dashed","dotted"]
    lbls=[r"numerical $g^{(2)}$", r"numerical $\tilde{g}^{(2)}$",r"theoretical $\tilde{g}^{(2)}$ ($(g_0\omega_m)^4\ll1$)",r"theoretical $\tilde{g}^{(2)}$ ($(g_0\omega_m)^{8}\ll1$)"]

    fig, ax = plt.subplots(figsize=(8.0, 6.0))

    for j in range(len(ys)):
        if j<=1:
            ax.scatter(data["E0"],data[ys[j]],s=pts,marker=lnstls[j],color=clrs[j],label=lbls[j])
            continue
        ax.plot(data["E0"],data[ys[j]],linewidth=lw,linestyle=lnstls[j],color=clrs[j],label=lbls[j],alpha=0.9)

    inset_axis1=inset_axes(ax,width="40%",height="20%",loc="center left",
                    bbox_to_anchor=(0.1, -0.16, 1, 1),bbox_transform=ax.transAxes)
    for j in range(len(ys)):
        if j<=1:
            inset_axis1.scatter(data["E0"][:3],data[ys[j]][:3],s=pts,marker=lnstls[j],color=clrs[j],label=lbls[j])
            continue
        inset_axis1.plot(data["E0"][:3],data[ys[j]][:3],linewidth=lw,linestyle=lnstls[j],color=clrs[j],label=lbls[j])
    inset_axis1.set_xscale("linear")
    inset_axis1.set_yscale("linear")
    inset_axis1.ticklabel_format(axis="both",style='sci', scilimits= (0,0),\
        useMathText=True)
    inset_axis1.set_xticks([1e-3,2e-3,3e-3,4e-3,5e-3])
    inset_axis1.set_xlim([9e-4,5.2e-3])
    inset_axis1.set_ylim([1.08e-4,1.2*1e-4])
    # plt.xscale("symlog",linthreshx=10**-3)
    ax.set_xscale("log")
    ax.set_yscale("log")
    ax.set_xlim([9e-4,0.06])
    ax.set_ylim([10**-4,3e-3])
    
    
    ax.set_xlabel(r"driving strength $\epsilon/\omega_m$" )
    ax.set_ylabel(r"autocorrelation $g^{(2)}$" )
    #  
    # plt.grid(True, which='both')
    # seaborn.despine(offset=0)
    
    formatter = ticker.FuncFormatter(lambda y, _: f'{y:.3g}')
    ax.tick_params(axis="both",which="major",width=1,length=5)
    ax.xaxis.set_major_formatter(formatter)
    #ax.xaxis.set_minor_formatter(formatter) #comment this line out
    ax.xaxis.set_major_locator(ticker.FixedLocator([1e-3,2e-3, 5e-3, 1e-2, 2e-2, 5e-2])) 
    
    # inset_axis1.xaxis.set_major_formatter(formatter)
    # inset_axis1.xaxis.set_major_locator(ticker.FixedLocator([1e-3,2e-3,5e-3])) 

    ax.grid(True, which='both')

    ax.legend(prop={ 'size': 20},loc="upper left")

    plt.tight_layout()
    plt.savefig("theory_error.pdf",dpi=1000,bbox_inches='tight')
    # initTrun=20

    # data=[[dd[initTrun:] for dd in d] for d in data]
    # clrs=genColors(len(data))

    # count=0

    # for d, clr, E0 in zip(data,clrs,[1000,500,200,100,50,30]):
    #     count+=1
    #     if count not in [1,3,5,6]:
    #         continue
    #     d_fin1=[np.abs(d[2][j]-d[1][j])/d[2][j] for j in range(len(d[1]))]
    #     d_fin2=[np.abs(d[3][j]-d[1][j])/d[2][j] for j in range(len(d[1]))]
    #     plt.plot(d[0],d_fin1,label=r"$\epsilon=\omega_m$/"+str(E0),color=clr,alpha=0.5)
    #     plt.plot(d[0],d_fin2,linestyle="dotted",color=clr)

    #     plt.yscale("log")
    #      
    #     plt.grid(True, which='both')
    #     seaborn.despine(offset=0)

    # plt.ylabel(r"error $\delta g^{(2)}$")
    # plt.xlabel("mechanical periods" )
    # plt.legend(loc="upper left" )
    # plt.xlim([0,10])
    # plt.ylim([1e-3,10])
    if False:
    #break axis
        f, (ax, ax2) = plt.subplots(2, 1, sharex=True)

        maxVal=0
        minVal=0

        for d, clr, E0 in zip(data,clrs,[1000,500,200,100,50,30]):
            d_fin1=[(d[2][j]-d[1][j])/d[1][j] for j in range(len(d[1]))]
            d_fin2=[(d[3][j]-d[1][j])/d[1][j] for j in range(len(d[1]))]

            #plot the same data twice but set different ylim for each
            ax.plot(d[0],d_fin1,label=r"$\epsilon=\omega_m$/"+str(E0),color=clr,alpha=0.5)
            ax.plot(d[0],d_fin2,linestyle="dotted",color=clr)

            ax2.plot(d[0],d_fin1,label=r"$\epsilon=\omega_m$/"+str(E0),color=clr,alpha=0.5)
            ax2.plot(d[0],d_fin2,linestyle="dotted",color=clr)
            # plt.plot(d[0][initTrun:],d[1][initTrun:],label=str(E0)+" num",color=clr)
            maxVal=max(maxVal,max(max(d_fin1),max(d_fin2)))
            minVal=min(minVal,min(min(d_fin1),min(d_fin2)))

        ax.set_ylim(1e-3,0.1)  # positive
        ax2.set_ylim(-1, -1e-3)  # negative

        ax.set_yscale("symlog",linthreshy=10**-4)
        ax2.set_yscale("symlog",linthreshy=10**-4)
        ax.set_xlim([1,10])
        ax2.set_xlim([1,10])

        ax.yaxis.set_minor_locator(MinorSymLogLocator(1e-3))
        ax2.yaxis.set_minor_locator(MinorSymLogLocator(1e-3))
        # ax.set_yticks([1e-3,5e-3,1e-2,5e-2,1e-1])
        # ax2.set_yticks([-1,-5e-1,-1e-1,-5e-2,-1e-2,-5e-3,-1e-3])

        # ax.set_yticklabels([r"$10^{-3}$",r"$5\times10^{-3}$",r"$10^{-2}$",r"$5\times10^{-2}$",r"$10^{-1}$"])
        # ax2.set_yticklabels([r"$-1$",r"$-5\times10^{-1}$",r"$-10^{-1}$",r"$-5\times10^{-2}$",\
            # r"$-10^{-2}$",r"$-5\times10^{-3}$",r"$-10^{-3}$"])

        ax.tick_params(axis='both', which='both', labelsize=14)
        ax2.tick_params(axis='both', which='both', labelsize=14)
        # hide the spines between ax and ax2
        ax.spines['bottom'].set_visible(False)
        ax2.spines['top'].set_visible(False)
        ax.xaxis.tick_top()
        ax.tick_params(labeltop='off')  # don't put tick labels at the top
        ax2.xaxis.tick_bottom()

        
         
        ax.grid(True, which='both')
        ax2.grid(True, which='both')
        seaborn.despine(offset=0)

        ax2.set_xlabel("mechanical periods" )
        f.text(0, 0.5, r"error $\delta g^{(2)}$", va='center',\
            rotation='vertical' )# share y-label for the two subplots

        d = .015  # how big to make the diagonal lines in axes coordinates
        # arguments to pass to plot, just so we don't keep repeating them
        kwargs = dict(transform=ax.transAxes, color='k', clip_on=False)
        ax.plot((-d, +d), (-d, +d), **kwargs)        # top-left diagonal
        ax.plot((1 - d, 1 + d), (-d, +d), **kwargs)  # top-right diagonal

        kwargs.update(transform=ax2.transAxes)  # switch to the bottom axes
        ax2.plot((-d, +d), (1 - d, 1 + d), **kwargs)  # bottom-left diagonal
        ax2.plot((1 - d, 1 + d), (1 - d, 1 + d), **kwargs)  # bottom-right diagonal

        ax.legend(loc="upper right" )


plt.show()