cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/parboil/cutcp
 SECONDS=0
 echo  "cutcp run" |tee -a time.txt
 /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/parboil-cutcp -i /root/gpgpu-sim_simulations/benchmarks/data_dirs/parboil/parboil-cutcp/data/small/input/watbox.sl40.pqr
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt
 rm _cuobjdump*

 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/parboil/mri-grid
 SECONDS=0
 echo  "mri-grid run" |tee -a time.txt
 /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/parboil-mri-gridding -i /root/gpgpu-sim_simulations/benchmarks/data_dirs/parboil/parboil-mri-gridding/data/small/input/small.uks --32 0
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt
 rm _cuobjdump*

 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/parboil/mri-q
 SECONDS=0
 echo  "mri-q run" |tee -a time.txt
 /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/parboil-mri-q -i /root/gpgpu-sim_simulations/benchmarks/data_dirs/parboil/parboil-mri-q/data/small/input/32_32_32_dataset.bin
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt
 rm _cuobjdump*

 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/parboil/sad
 SECONDS=0
 echo  "sad run" |tee -a time.txt
 /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/parboil-sad -i /root/gpgpu-sim_simulations/benchmarks/data_dirs/parboil/parboil-sad/data/default/input/reference.bin,/root/gpgpu-sim_simulations/benchmarks/data_dirs/parboil/parboil-sad/data/default/input/frame.bin
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt
 rm _cuobjdump*

 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/parboil/sgemm
 SECONDS=0
 echo  "sgemm run" |tee -a time.txt
 /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/parboil-sgemm -i /root/gpgpu-sim_simulations/benchmarks/data_dirs/parboil/parboil-sgemm/data/small/input/matrix1.txt,/root/gpgpu-sim_simulations/benchmarks/data_dirs/parboil/parboil-sgemm/data/small/input/matrix2.txt,/root/gpgpu-sim_simulations/benchmarks/data_dirs/parboil/parboil-sgemm/data/small/input/matrix2t.txt
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt
 rm _cuobjdump*

 cd /root/gpgpu-sim_distribution
 source setup_environment 
 make
 cd /root/benchmark_run/parboil/stencil
 SECONDS=0
 echo  "stencil run" |tee -a time.txt
 /root/gpgpu-sim_simulations/benchmarks/bin/4.2/release/parboil-stencil -i /root/gpgpu-sim_simulations/benchmarks/data_dirs/parboil/parboil-stencil/data/default/input/512x512x64x100.bin -- 512 512 64 100
 duration=$SECONDS
 echo "$(($duration / 60)) minutes and $(($duration % 60)) seconds elapsed."|tee -a time.txt
 rm _cuobjdump*