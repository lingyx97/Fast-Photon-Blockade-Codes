from headers import *

filename=str(Path(__file__).parent/"param_vs_res.xlsx")
df1= pd.read_excel(filename, 'g0', skiprows = 14, usecols = 'A:I' )
df2= pd.read_excel(filename, 'kap', skiprows = 1, usecols = 'A:I' )
df3= pd.read_excel(filename, 'E0', skiprows = 1, usecols = 'A:I' )
df4= pd.read_excel(filename, 't_mono', skiprows = 1, usecols = 'A:I' )
df5= pd.read_excel(filename, 'mech_dissip', skiprows = 1, usecols = 'A:C' )

df_cur=df4
# df_main=df_cur.loc[(df_cur['note']=='ok') ,:]#| (df_cur['note']=='ok_no_sharp'),:]
# df_main2=df_cur.loc[ (df_cur['note']=='E1000'),:]
df_main=df_cur.loc[(df_cur['note']=='g0=0.3') ,:]
df_main2=df_cur.loc[(df_cur['note']=='g0=0.35') ,:]
df_main3=df_cur.loc[(df_cur['note']=='g0=0.4') ,:]

x_key="t"
# plt.yscale('log')
# plt.ylim([0,10**-4])
cells=["num","Taylor1"]
labels=[r"$g_0=0.3$",r"$g_0=0.35$",r"$g_0=0.4$"]
linestyles=["solid","dashed"]

dfs=[df_main,df_main2,df_main3]

colors=plt.cm.get_cmap('hsv', 10*len(dfs))

for j in range(len(cells)):
    for k in range(len(dfs)):
        plt.plot(dfs[k][x_key],dfs[k][cells[j]],label=labels[k]*(1-j),\
            linestyle=linestyles[j],color=colors(10*k),alpha=0.5)

# plt.xticks(range(3,16))
plt.yticks(np.arange(0, 0.15, 0.01))
plt.grid()
plt.legend()
plt.show()