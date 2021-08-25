cd 
mkdir baseline_192k
# mkdir max_cta_4
# mkdir max_cta_2
# mkdir max_cta_8_nocache
# mkdir max_cta_4_nocache
# mkdir max_cta_2_nocache

cd benchmark_run
./clean_up.sh
./make_dir.sh
./set_up_config.sh GTX480
./cache_sensitive.sh
cp -a /root/benchmark_run/* /root/baseline_192k/

# cd benchmark_run
# ./clean_up.sh
# ./make_dir.sh
# ./set_up_config.sh GTX480-1
# ./cache_sensitive.sh
# cp -a /root/benchmark_run/* /root/max_cta_4/

# cd benchmark_run
# ./clean_up.sh
# ./make_dir.sh
# ./set_up_config.sh GTX480-2
# ./cache_sensitive.sh
# cp -a /root/benchmark_run/* /root/max_cta_2/

# cd benchmark_run
# ./clean_up.sh
# ./make_dir.sh
# ./set_up_config.sh GTX480-3
# ./cache_sensitive.sh
# cp -a /root/benchmark_run/* /root/max_cta_8_nocache/

# cd benchmark_run
# ./clean_up.sh
# ./make_dir.sh
# ./set_up_config.sh GTX480-4
# ./cache_sensitive.sh
# cp -a /root/benchmark_run/* /root/max_cta_4_nocache/

# cd benchmark_run
# ./clean_up.sh
# ./make_dir.sh
# ./set_up_config.sh GTX480-5
# ./cache_sensitive.sh
# cp -a /root/benchmark_run/* /root/max_cta_2_nocache/
