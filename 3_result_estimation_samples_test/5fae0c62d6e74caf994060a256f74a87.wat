(module
(type $sig_function_2022417864 (func))
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_578416896 (mut i32) (i32.const 984236652))
(global $global_2312046769 (mut i64) (i64.const -4320473379882221177))
(func $function_2022417864 (export "function_2022417864")
    (local f64)
    (local $temp i32)
    local.get 0
    i64.trunc_f64_s
    global.set $global_2312046769
    (i32.const 64298)
    global.set $global_578416896
    (i32.const 94545)
    br_if 0
)
(func $run (export "run") (result f64)
    (local $temp i32)
    global.get $global_578416896
    i32.clz
    f64.convert_i32_u
    drop
    nop
    (f64.const 2.734548336700769e-69)
    call $function_2022417864
)

)