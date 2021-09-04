import gpgpu_function as ft
import os
target_folder ='result'
try:
    os.system("mkdir result")
except :
    print(target_folder+"目的資料已存在")
else:
    print("running...") 
# os.system("mkdir result")

total_cycle=int(input('please key in the benchmark total cycle: ')) # please update the benchmark total cycle
try:
    ft.convert_cta_total()
except:
    print("continue")
ft.function_cta_retire_time_transform()
ft.function_unit_time_transform(total_cycle)
