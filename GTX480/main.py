import gpgpu_function as ft

total_cycle=int(input('please key in the benchmark total cycle: ')) # please update the benchmark total cycle
# ft.convert_cta_total()
ft.function_cta_retire_time_transform()
ft.function_unit_time_transform(total_cycle)