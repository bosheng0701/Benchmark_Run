import numpy as np

def function_cta_retire_time_transform():
    f =open('cta_retire.txt','r')
    a=[]
    for i in f:
        a.append(i.strip().split(','))
    f.close()
    ffp=open('total_cta.txt','r')
    b=[]
    for j in ffp:
        b.append(j.strip().split(','))
    ffp.close()
    #-----------------------------------
    fp=open('cta_retire_mean.txt','w')
    
    shader_total_rate=np.zeros((15),dtype=np.int32)
    for i in a:
        shader_total_rate[int(i[0])]=int(i[4])
    for i,j in b:
        shader_total_rate[int(i)-1]=shader_total_rate[int(i)-1]/int(j)
    for i in range(15):
        fp.write(str(i+1)+' '+str(shader_total_rate[i])+'\n')    
    fp.close()
    #----------------------------------------------
    ffp=open('top10_cta_retire.txt','w')
    shader_max=np.zeros((15,10),dtype=np.int32)
    count = np.zeros((15),dtype=np.int32)
    for i in a:
        if(count[int(i[0])]<=9):
            shader_max[int(i[0])][count[int(i[0])]]=i[3]
            count[int(i[0])]=count[int(i[0])]+1
        elif(count[int(i[0])]>9 and int(i[3])>np.amin(shader_max[int(i[0])])):
            index=np.where(shader_max[int(i[0])]==np.amin(shader_max[int(i[0])]))
            shader_max[int(i[0])][index[0][0]]=i[3]
    for i in range(15):
        shader_max=abs(np.sort(-shader_max))
        ffp.write(str(shader_max[i])+'\n')
    ffp.close()
    #---------------------------------------------------

def function_unit_time_transform(total_cycle):
    f =open('lsutime.txt','r')
    a=[]
    for i in f:
        a.append(i.strip().split(','))
    f.close()
    #----------------------------------------------------------
    fp=open('total_rate_FU.txt','w')
    shader_total_rate=np.zeros((15),dtype=np.float32)
    for i in a:
        shader_total_rate[int(i[0])]=int(i[4])/total_cycle
    for i in range(15):
        fp.write(str(i+1)+' '+str(round(shader_total_rate[i]*100,2))+'%\n')
    fp.close()
    #--------------------------------------------------------
    ffp=open('top10.txt_FU','w')
    shader_max=np.zeros((15,10),dtype=np.int32)
    count = np.zeros((15),dtype=np.int32)
    for i in a:
        if(count[int(i[0])]<=9):
            shader_max[int(i[0])][count[int(i[0])]]=i[3]
            count[int(i[0])]=count[int(i[0])]+1
        elif(count[int(i[0])]>9 and int(i[3])>np.amin(shader_max[int(i[0])])):
            index=np.where(shader_max[int(i[0])]==np.amin(shader_max[int(i[0])]))
            shader_max[int(i[0])][index[0][0]]=i[3]
    for i in range(15):
        shader_max=abs(np.sort(-shader_max))
        ffp.write(str(shader_max[i])+'\n')
    ffp.close()
    #---------------------------------------------------------------------------------