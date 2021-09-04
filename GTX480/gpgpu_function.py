import numpy as np

def convert_cta_total():  #統計各個shader的cta數量 
    f=open('total_cta.txt','r')
    total_cta_number=[]
    shader_total_cta=np.zeros((15),dtype=np.int32)
    for j in f:
        total_cta_number.append(j.strip().split(','))
    for i,j in total_cta_number:
        shader_total_cta[int(i)]=j
    f.close()
    f=open('./result/total_cta.txt','w')
    for i in range(15):
        f.write(str(i+1)+','+str(shader_total_cta[i])+'\n')   
    f.close()
    
def function_cta_retire_time_transform():# 統計cta retire的平均時間以及前10個最久時間
    f =open('cta_retire.txt','r') # shader , begin , end , cost , total
    cta_retire_time=[]
    for i in f:
        cta_retire_time.append(i.strip().split(','))
    f.close()
    ffp=open('./result/total_cta.txt','r')
    total_cta_number=[]
    for j in ffp:
        total_cta_number.append(j.strip().split(','))
    ffp.close()

    #------------------------------------------
    # 輸出平均及各個百分位項的時間
    fp=open('./result/cta_retire_mean.txt','w')
    shader_total_rate=np.zeros((15),dtype=np.int32)
    
    percent_cta=[] #生成二維陣列此陣列用來儲存各個SM的cta值
    for i in range(15):
        percent_cta.append([])
    
    for i in cta_retire_time:
        shader_total_rate[int(i[0])]=int(i[4])
        percent_cta[int(i[0])].append(int(i[3]))

    for i,j in total_cta_number:
        shader_total_rate[int(i)-1]=shader_total_rate[int(i)-1]/int(j)
    fp.write('sid  mean  75%     50%    25%\n')

    for i in range(15):        
        fp.write(str(i+1)+'    '+str(shader_total_rate[i])+'   '+str(np.percentile(percent_cta[i],75))+'  '+str(np.percentile(percent_cta[i],50))+'  '+str(np.percentile(percent_cta[i],25))+'\n')    
    fp.close()
    

    #----------------------------------------------
    # 找到前十項cta retire time
    ffp=open('./result/top10_cta_retire.txt','w')
    shader_max=np.zeros((15,10),dtype=np.int32)
    count = np.zeros((15),dtype=np.int32)
    for i in cta_retire_time:
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

def function_unit_time_transform(total_cycle): #統計load store unit busy time 
    f =open('lsutime.txt','r')
    lsu_busy_time=[]
    for i in f:
        lsu_busy_time.append(i.strip().split(','))
    f.close()
    #----------------------------------------------------------
    # 輸出平均及各個百分位項的時間
    fp=open('./result/total_rate_FU.txt','w')
    fu_percent=[]
    for i in range(15):
        fu_percent.append([])
    shader_total_rate=np.zeros((15),dtype=np.float32)
    for i in lsu_busy_time:
        shader_total_rate[int(i[0])]=int(i[4])/total_cycle
        fu_percent[int(i[0])].append(int(i[3]))
    fp.write('sid  busy_rate Mean 75%     50%    25%\n')
    for i in range(15):
        if len(fu_percent[i])==0:
            fu_percent[i].append(0)
        fp.write(str(i+1)+' '+str(round(shader_total_rate[i]*100,2))+'%'+'   '+str(round(np.mean(fu_percent[i]),1))+'  '+str(np.percentile(fu_percent[i],75))+'  '+str(np.percentile(fu_percent[i],50))+'  '+str(np.percentile(fu_percent[i],25))+'\n')
    fp.close()
    #--------------------------------------------------------
    # 找到前十項lsu busy time
    ffp=open('./result/top10_FU.txt','w')
    shader_max=np.zeros((15,10),dtype=np.int32)
    count = np.zeros((15),dtype=np.int32)
    for i in lsu_busy_time:
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