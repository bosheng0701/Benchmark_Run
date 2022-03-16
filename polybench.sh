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