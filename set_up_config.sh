 # This file is used to make config to all benchmark
 
 #ispass
 cd /root/benchmark_run/ispass/bfs
 cp -a /root/benchmark_run/$1/* ./
 cd /root/benchmark_run/ispass/wp
 cp -a /root/benchmark_run/$1/* ./
 cd /root/benchmark_run/ispass/wp/data
 cp -a /root/gpgpu-sim_simulations/benchmarks/data_dirs/cuda/ispass-2009/ispass-2009-WP/data/* ./

 # pannotia
 cd /root/benchmark_run/pannotia/color_max
 cp -a /root/benchmark_run/$1/* ./
 # parboil
 cd /root/benchmark_run/parboil/parboil-spmv
 cp -a /root/benchmark_run/$1/* ./

 cd /root/benchmark_run/parboil/cutcp
 cp -a /root/benchmark_run/$1/* ./
 
 cd /root/benchmark_run/parboil/lbm
 cp -a /root/benchmark_run/$1/* ./

 cd /root/benchmark_run/parboil/mri-grid
 cp -a /root/benchmark_run/$1/* ./

 cd /root/benchmark_run/parboil/mri-q
 cp -a /root/benchmark_run/$1/* ./

 cd /root/benchmark_run/parboil/sad
 cp -a /root/benchmark_run/$1/* ./

 cd /root/benchmark_run/parboil/sgemm
 cp -a /root/benchmark_run/$1/* ./

 cd /root/benchmark_run/parboil/stencil
 cp -a /root/benchmark_run/$1/* ./

 # polybench
 cd /root/benchmark_run/polybench/2DC
 cp -a /root/benchmark_run/$1/* ./

 cd /root/benchmark_run/polybench/atax
 cp -a /root/benchmark_run/$1/* ./

 cd /root/benchmark_run/polybench/mvt
 cp -a /root/benchmark_run/$1/* ./

 cd /root/benchmark_run/polybench/2MM
 cp -a /root/benchmark_run/$1/* ./

 cd /root/benchmark_run/polybench/3DC
 cp -a /root/benchmark_run/$1/* ./

 cd /root/benchmark_run/polybench/3MM
 cp -a /root/benchmark_run/$1/* ./

 cd /root/benchmark_run/polybench/bicg
 cp -a /root/benchmark_run/$1/* ./

 cd /root/benchmark_run/polybench/corr
 cp -a /root/benchmark_run/$1/* ./

 cd /root/benchmark_run/polybench/cova
 cp -a /root/benchmark_run/$1/* ./

 cd /root/benchmark_run/polybench/fdtd2d
 cp -a /root/benchmark_run/$1/* ./

 cd /root/benchmark_run/polybench/gemm
 cp -a /root/benchmark_run/$1/* ./

 cd /root/benchmark_run/polybench/gesu
 cp -a /root/benchmark_run/$1/* ./

 cd /root/benchmark_run/polybench/gram
 cp -a /root/benchmark_run/$1/* ./

 cd /root/benchmark_run/polybench/syr2k
 cp -a /root/benchmark_run/$1/* ./

 cd /root/benchmark_run/polybench/syrk
 cp -a /root/benchmark_run/$1/* ./
 # rodinia 3.1
 cd /root/benchmark_run/rodinia/3.1/cuda/b+tree
 cp -a /root/benchmark_run/$1/* ./

 cd /root/benchmark_run/rodinia/3.1/cuda/backprop
 cp -a /root/benchmark_run/$1/* ./
 
 cd /root/benchmark_run/rodinia/3.1/cuda/bfs
 cp -a /root/benchmark_run/$1/* ./

 cd /root/benchmark_run/rodinia/3.1/cuda/cfd
 cp -a /root/benchmark_run/$1/* ./

 cd /root/benchmark_run/rodinia/3.1/cuda/dwt2d
 cp -a /root/benchmark_run/$1/* ./

 cd /root/benchmark_run/rodinia/3.1/cuda/gaussian
 cp -a /root/benchmark_run/$1/* ./

 cd /root/benchmark_run/rodinia/3.1/cuda/heartwall
 cp -a /root/benchmark_run/$1/* ./

 cd /root/benchmark_run/rodinia/3.1/cuda/hotspot
 cp -a /root/benchmark_run/$1/* ./

 cd /root/benchmark_run/rodinia/3.1/cuda/hotspot3D
 cp -a /root/benchmark_run/$1/* ./

 cd /root/benchmark_run/rodinia/3.1/cuda/hybridsort
 cp -a /root/benchmark_run/$1/* ./

 cd /root/benchmark_run/rodinia/3.1/cuda/kmeans
 cp -a /root/benchmark_run/$1/* ./

 cd /root/benchmark_run/rodinia/3.1/cuda/lavaMD
 cp -a /root/benchmark_run/$1/* ./

 cd /root/benchmark_run/rodinia/3.1/cuda/leukocyte
 cp -a /root/benchmark_run/$1/* ./

 cd /root/benchmark_run/rodinia/3.1/cuda/lud
 cp -a /root/benchmark_run/$1/* ./

 cd /root/benchmark_run/rodinia/3.1/cuda/myocyte
 cp -a /root/benchmark_run/$1/* ./

 cd /root/benchmark_run/rodinia/3.1/cuda/nn
 cp -a /root/benchmark_run/$1/* ./

 cd /root/benchmark_run/rodinia/3.1/cuda/nw
 cp -a /root/benchmark_run/$1/* ./

 cd /root/benchmark_run/rodinia/3.1/cuda/mummergpu
 cp -a /root/benchmark_run/$1/* ./

 cd /root/benchmark_run/rodinia/3.1/cuda/particlefilter
 cp -a /root/benchmark_run/$1/* ./

 cd /root/benchmark_run/rodinia/3.1/cuda/pathfinder
 cp -a /root/benchmark_run/$1/* ./

 cd /root/benchmark_run/rodinia/3.1/cuda/srad 
 cp -a /root/benchmark_run/$1/* ./

 cd /root/benchmark_run/rodinia/3.1/cuda/streamcluster
 cp -a /root/benchmark_run/$1/* ./

 # sdk
 cd /root/benchmark_run/sdk/dct
 cp -a /root/benchmark_run/$1/* ./
 mkdir data
 cd data 
 cp -a /root/benchmark_run/data/* ./
 
 cd /root/benchmark_run/sdk/MGT
 cp -a /root/benchmark_run/$1/* ./
