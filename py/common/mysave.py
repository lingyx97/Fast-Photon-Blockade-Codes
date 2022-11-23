import time
import pickle
from pathlib import Path
import shutil

def save(data,filename):
    fileObject = open(filename, 'wb')
    pickle.dump(data, fileObject, protocol=pickle.HIGHEST_PROTOCOL)
    fileObject.close()
    
    return 1

def save_list(data,foldername):
    out_folder=Path().cwd()/foldername
    shutil.rmtree(out_folder,ignore_errors=True)
    out_folder.mkdir(parents=True, exist_ok=True)
    for i in range(0,len(data),100):
        save(data[i:i+100],out_folder/str(int(i/100)))
    print("data saved")
    return 1

SLEEP_TIME=10
def load_list(foldername):
    in_folder=Path().cwd()/foldername
    i=0
    res=[]
    while i>-1:
        try:
            with open(in_folder/str(i),'rb') as f:
                res=[*res,*(pickle.load(f))]
            i+=1
            if i%10==0:
                print("sleeping......."+str(i)+"...",end="\r")
                for tmp_time_counter in range(SLEEP_TIME):
                    print(tmp_time_counter/SLEEP_TIME,end="....\r")
                    time.sleep(1)
        except FileNotFoundError:
            if i==0:
                print(foldername+"not found")
            else:
                print(foldername+" loaded")
            i=-1
    return res


        
