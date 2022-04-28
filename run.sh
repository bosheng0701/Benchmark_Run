 ###------------------------------ Ispass2009 begin ---------------------------------

 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/ispass/bfs
 SECONDS=0
 echo  "BFS run" |tee -a time.txt
 /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/ispass-2009-BFS /root/gpgpu-sim_simulations/benchmarks/data_dirs/cuda/ispass-2009/ispass-2009-BFS/data/graph65536.txt >bfs_65536_ispass.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt
 rm _cuobjdump*

 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/ispass/wp
 SECONDS=0
 echo  "wp run" |tee -a time.txt
 echo "10 ./data/" |/root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/ispass-2009-WP >wp.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt
 rm _cuobjdump*

 ###------------------------------ Ispass2009 3.1 End ------------------------------------------------------
 
 ###------------------------------ pannotia begin ---------------------------------

 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/pannotia/color_max
 SECONDS=0
 echo  "color_max run" |tee -a time.txt
 /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/color_max /root/gpgpu-sim_simulations/benchmarks/data_dirs/pannotia/color_max/data/ecology1.graph 1 >color_max.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt
 rm _cuobjdump*

 ###------------------------------ pannotia End ------------------------------------------------------

 ###------------------------------ parboil begin ---------------------------------

 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/parboil/lbm
 SECONDS=0
 echo  "lbm run" |tee -a time.txt
 /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/parboil-lbm /root/gpgpu-sim_simulations/benchmarks/src/cuda/parboil/datasets/lbm/short/input/120_120_150_ldc.of -- 100
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt
 rm _cuobjdump*


 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/parboil/parboil-spmv
 SECONDS=0
 echo  "parboil-spmv run" |tee -a time.txt
 /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/parboil-spmv -i /root/gpgpu-sim_simulations/benchmarks/data_dirs/parboil/parboil-spmv/data/small/input/1138_bus.mtx,/root/gpgpu-sim_simulations/benchmarks/data_dirs/parboil/parboil-spmv/data/small/input/vector.bin >spmv.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt
 rm _cuobjdump*
# new parboil benchmark
 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/parboil/cutcp
 SECONDS=0
 echo  "cutcp run" |tee -a time.txt
 /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/parboil-cutcp -i /root/gpgpu-sim_simulations/benchmarks/data_dirs/parboil/parboil-cutcp/data/small/input/watbox.sl40.pqr >cutcp.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt
 rm _cuobjdump*

 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/parboil/mri-grid
 SECONDS=0
 echo  "mri-grid run" |tee -a time.txt
 /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/parboil-mri-gridding -i /root/gpgpu-sim_simulations/benchmarks/data_dirs/parboil/parboil-mri-gridding/data/small/input/small.uks --32 0 > mri-grid.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt
 rm _cuobjdump*

 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/parboil/mri-q
 SECONDS=0
 echo  "mri-q run" |tee -a time.txt
 /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/parboil-mri-q -i /root/gpgpu-sim_simulations/benchmarks/data_dirs/parboil/parboil-mri-q/data/small/input/32_32_32_dataset.bin>mri-q.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt
 rm _cuobjdump*

 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/parboil/sad
 SECONDS=0
 echo  "sad run" |tee -a time.txt
 /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/parboil-sad -i /root/gpgpu-sim_simulations/benchmarks/data_dirs/parboil/parboil-sad/data/default/input/reference.bin,/root/gpgpu-sim_simulations/benchmarks/data_dirs/parboil/parboil-sad/data/default/input/frame.bin >sad.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt
 rm _cuobjdump*

 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/parboil/sgemm
 SECONDS=0
 echo  "sgemm run" |tee -a time.txt
 /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/parboil-sgemm -i /root/gpgpu-sim_simulations/benchmarks/data_dirs/parboil/parboil-sgemm/data/small/input/matrix1.txt,/root/gpgpu-sim_simulations/benchmarks/data_dirs/parboil/parboil-sgemm/data/small/input/matrix2.txt,/root/gpgpu-sim_simulations/benchmarks/data_dirs/parboil/parboil-sgemm/data/small/input/matrix2t.txt >segmm.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt
 rm _cuobjdump*

 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/parboil/stencil
 SECONDS=0
 echo  "stencil run" |tee -a time.txt
 /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/parboil-stencil -i /root/gpgpu-sim_simulations/benchmarks/data_dirs/parboil/parboil-stencil/data/default/input/512x512x64x100.bin -- 512 512 64 100 >stencil.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt
 rm _cuobjdump*



 ###------------------------------ parboil End ------------------------------------------------------

 ###------------------------------ polybench begin ---------------------------------
 
 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/polybench/2DC
 SECONDS=0
 echo  "2DC run" |tee -a time.txt
 /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/polybench-2DConvolution > 2DC.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt
 rm _cuobjdump*

 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/polybench/atax
 SECONDS=0
 echo  "atax run" |tee -a time.txt
 /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/polybench-atax > atax.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt
 rm _cuobjdump*

 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/polybench/mvt
 SECONDS=0
 echo  "mvt run" |tee -a time.txt
 /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/polybench-mvt > mvt.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt
 rm _cuobjdump*
 #new polybench

 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/polybench/2MM
 SECONDS=0
 echo  "2MM run" |tee -a time.txt
 /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/polybench-2mm > 2MM.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt
 rm _cuobjdump*

 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/polybench/3DC
 SECONDS=0
 echo  "3DC run" |tee -a time.txt
 /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/polybench-3DConvolution > 3DC.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt
 rm _cuobjdump*

 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/polybench/3MM
 SECONDS=0
 echo  "3MM run" |tee -a time.txt
 /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/polybench-3mm > 3MM.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt
 rm _cuobjdump*

 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/polybench/bicg
 SECONDS=0
 echo  "bicg run" |tee -a time.txt
 /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/polybench-bicg > bicg.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt
 rm _cuobjdump*

 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/polybench/corr
 SECONDS=0
 echo  "correlation run" |tee -a time.txt
 /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/polybench-correlation > correlation.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt
 rm _cuobjdump*
 
 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/polybench/cova
 SECONDS=0
 echo  "covariance run" |tee -a time.txt
 /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/polybench-covariance > covariance.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt
 rm _cuobjdump*

 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/polybench/fdtd2d
 SECONDS=0
 echo  "fdtd2d run" |tee -a time.txt
 /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/polybench-fdtd2d > fdtd2d.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt
 rm _cuobjdump*

 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/polybench/gemm
 SECONDS=0
 echo  "gemm run" |tee -a time.txt
 /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/polybench-gemm > gemm.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt
 rm _cuobjdump*

 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/polybench/gesu
 SECONDS=0
 echo  "gesu run" |tee -a time.txt
 /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/polybench-gesummv > gesu.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt
 rm _cuobjdump*

 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/polybench/gram
 SECONDS=0
 echo  "gram run" |tee -a time.txt
 /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/polybench-gramschmidt > gram.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt
 rm _cuobjdump*

 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/polybench/syr2k
 SECONDS=0
 echo  "syr2k run" |tee -a time.txt
 /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/polybench-syr2k > syr2k.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt
 rm _cuobjdump*

 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/polybench/syrk
 SECONDS=0
 echo  "syrk run" |tee -a time.txt
 /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/polybench-syrk > syrk.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt
 rm _cuobjdump*

 ###------------------------------ polybench End ------------------------------------------------------
 
 ###------------------------------ Rodinia 3.1 begin --------------------------------------------------
 
 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/rodinia/3.1/cuda/b+tree
 SECONDS=0
 echo  "b+tree run " |tee -a time.txt
 timeout 2h /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/b+tree-rodinia-3.1 file /root/gpgpu-sim_simulations/benchmarks/data_dirs/cuda/rodinia/3.1/b+tree-rodinia-3.1/data/mil.txt command /root/gpgpu-sim_simulations/benchmarks/data_dirs/cuda/rodinia/3.1/b+tree-rodinia-3.1/data/command.txt > b+tree_baseline.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt
 rm _cuobjdump*
 
 
 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/rodinia/3.1/cuda/backprop
 SECONDS=0
 echo  "backprop run" |tee -a time.txt
 timeout 2h /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/backprop-rodinia-3.1 65536 >backprop_baseline_65536.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt
 rm _cuobjdump*

 
 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/rodinia/3.1/cuda/bfs
 SECONDS=0
 echo  "bfs run" |tee -a time.txt
 /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/bfs-rodinia-3.1 /root/gpgpu-sim_simulations/benchmarks/data_dirs/cuda/rodinia/3.1/bfs-rodinia-3.1/data/graph1MW_6.txt > bfs_graph1MW_6.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt
 rm _cuobjdump*


 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/rodinia/3.1/cuda/cfd
 SECONDS=0
 echo  "cfd run" |tee -a time.txt
 timeout 2h /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/cfd-rodinia-3.1 /root/gpgpu-sim_simulations/benchmarks/data_dirs/cuda/rodinia/3.1/cfd-rodinia-3.1/data/missile.domn.0.2M >cfd_baseline_0.2M.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt
 rm _cuobjdump*

 
 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/rodinia/3.1/cuda/dwt2d
 SECONDS=0
 echo  "dwt2d run" |tee -a time.txt
 timeout 2h /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/dwt2d-rodinia-3.1 /root/gpgpu-sim_simulations/benchmarks/data_dirs/cuda/rodinia/3.1/dwt2d-rodinia-3.1/data/rgb.bmp -d 1024x1024 -f -5 -l 3 >dwt2d_baseline_rgb.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt
 rm _cuobjdump*

 
 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/rodinia/3.1/cuda/gaussian
 SECONDS=0
 echo  "gaussian run" |tee -a time.txt
 timeout 2h /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/gaussian-rodinia-3.1 -f /root/gpgpu-sim_simulations/benchmarks/data_dirs/cuda/rodinia/3.1/gaussian-rodinia-3.1/data/matrix4.txt > gaussian_baseline_matrix4.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt
 rm _cuobjdump*

 
 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/rodinia/3.1/cuda/heartwall
 SECONDS=0
 echo  "heartwall run" |tee -a time.txt
 timeout 2h /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/heartwall-rodinia-3.1 /root/gpgpu-sim_simulations/benchmarks/data_dirs/cuda/rodinia/3.1/heartwall-rodinia-3.1/data/test.avi 20 > heartwall_baseline_20.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt
 rm _cuobjdump*

 
 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/rodinia/3.1/cuda/hotspot
 SECONDS=0
 echo  "hotspot run" |tee -a time.txt
 timeout 2h /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/hotspot-rodinia-3.1 512 2 2 /root/gpgpu-sim_simulations/benchmarks/data_dirs/cuda/rodinia/3.1/hotspot-rodinia-3.1/data/temp_512 output.out > hotspot_baseline_512.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt
 rm _cuobjdump*

 
 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/rodinia/3.1/cuda/hotspot3D
 SECONDS=0
 echo  "hotspot3D run" |tee -a time.txt
 timeout 2h /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/hotspot3D-rodinia-3.1 512 8 100 /root/gpgpu-sim_simulations/benchmarks/data_dirs/cuda/rodinia/3.1/hotspot3D-rodinia-3.1/data/power_512x8 /root/gpgpu-sim_simulations/benchmarks/data_dirs/cuda/rodinia/3.1/hotspot3D-rodinia-3.1/data/temp_512x8 output.out >hotspot3D_baseline_512x8.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt
 rm _cuobjdump*

 
 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/rodinia/3.1/cuda/hybridsort
 SECONDS=0
 echo  "hybridsort run" |tee -a time.txt
 timeout 2h /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/hybridsort-rodinia-3.1 r > hybridsort_baseline.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt
 rm _cuobjdump*

 
 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/rodinia/3.1/cuda/kmeans
 SECONDS=0
 echo  "kmeans run" |tee -a time.txt
 timeout 2h /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/kmeans-rodinia-3.1 -o -i /root/gpgpu-sim_simulations/benchmarks/data_dirs/cuda/rodinia/3.1/kmeans-rodinia-3.1/data/128k.txt >kmeans_baseline_128k.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt
 rm _cuobjdump*

 
 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/rodinia/3.1/cuda/lavaMD
 SECONDS=0
 echo  "lavaMD run" |tee -a time.txt
 timeout 2h /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/lavaMD-rodinia-3.1 -boxes1d 10 > lavaMD_baseline.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt
 rm _cuobjdump*

 
 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/rodinia/3.1/cuda/leukocyte
 SECONDS=0 
 echo  "leukocyte run" |tee -a time.txt
 timeout 2h /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/leukocyte-rodinia-3.1 /root/gpgpu-sim_simulations/benchmarks/data_dirs/cuda/rodinia/3.1/leukocyte-rodinia-3.1/data/testfile.avi 5 >leukocyte_baseline_5.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt
 rm _cuobjdump* 
 
 
 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/rodinia/3.1/cuda/lud
 SECONDS=0
 echo  "lud run" |tee -a time.txt
 /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/lud-rodinia-3.1 -i /root/gpgpu-sim_simulations/benchmarks/data_dirs/cuda/rodinia/3.1/lud-rodinia-3.1/data/256.dat >lud_baseline_256.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt
 rm _cuobjdump*


 
 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/rodinia/3.1/cuda/myocyte
 SECONDS=0
 echo  "myocyte run" |tee -a time.txt
 timeout 2h /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/myocyte-rodinia-3.1 100 1 0 > myocyte_baseline_100.txt 
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt
 rm _cuobjdump*

 
 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/rodinia/3.1/cuda/nn
 SECONDS=0
 echo  "nn run" |tee -a time.txt
 timeout 2h /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/nn-rodinia-3.1 /root/gpgpu-sim_simulations/benchmarks/data_dirs/cuda/rodinia/3.1/nn-rodinia-3.1/data/filelist_4 -r 5 -lat 30 -lng 90 > nn_baseline_filelist_4.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt
 rm _cuobjdump*

 
 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/rodinia/3.1/cuda/nw
 SECONDS=0
 echo  "nw run" |tee -a time.txt
 timeout 2h /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/nw-rodinia-3.1 2048 10 >nw_baseline_2048.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt
 rm _cuobjdump*

 
 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/rodinia/3.1/cuda/particlefilter
 SECONDS=0
 echo  "particlefilter_float run" |tee -a time.txt
 timeout 2h /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/particlefilter_float-rodinia-3.1 -x 128 -y 128 -z 10 -np 1000 >particlefilter_float_baseline.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt
 rm _cuobjdump*

 
 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/rodinia/3.1/cuda/pathfinder
 SECONDS=0
 echo  "pathfinder run" |tee -a time.txt
 timeout 2h /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/pathfinder-rodinia-3.1 100000 100 20 > result.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt
 rm _cuobjdump*

 
 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/rodinia/3.1/cuda/srad 
 SECONDS=0
 echo  "srad_v2 run" |tee -a time.txt
 /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/srad_v2-rodinia-3.1 128 128 0 31 0 31 0.5 2 >srad_v2_baseline_2048.txt 
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt
 rm _cuobjdump*

 
 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/rodinia/3.1/cuda/streamcluster
 SECONDS=0
 echo  "streamcluster run" |tee -a time.txt  
 timeout 2h /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/streamcluster-rodinia-3.1 10 20 256 65536 65536 1000 none output.txt 1 >streamcluster_baseline_65536.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt
 rm _cuobjdump* 

###--------------------------------- Rodinia 3.1 End------------------------------------------------------

###--------------------------------- SDK Begin -----------------------------------------------------------

 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/sdk/dct
 SECONDS=0
 echo  "dct run" |tee -a time.txt
 /root/NVIDIA_GPU_Computing_SDK/C/bin/linux/release/dct8x8 >dct.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt
 rm _cuobjdump*

 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/sdk/MGT
 SECONDS=0
 echo  "MGT run" |tee -a time.txt
 /root/NVIDIA_GPU_Computing_SDK/C/bin/linux/release/mergeSort >MGT.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt
 rm _cuobjdump*

###--------------------------------- SDK End -----------------------------------------------------------
