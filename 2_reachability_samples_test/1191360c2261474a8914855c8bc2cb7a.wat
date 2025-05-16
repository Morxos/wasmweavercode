(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_337195977 (mut i64) (i64.const -2376313023575195652))
(func $run (export "run")
    (local f32 f32)
    (local $temp i32)
    ;;FLAG_0
    (i32.const -63639775)
    f64.convert_i32_s
    f64.floor
    i64.trunc_f64_s
    global.set $global_337195977
    (f32.const -2.042839919401895e-24)
    f32.trunc
    local.tee 0
    f32.trunc
    i64.trunc_f32_u
    f32.convert_i64_u
    (f32.const 2.2390680977513718e-28)
    local.tee 1
    f32.add
    local.get 0
    f32.le
    f64.convert_i32_u
    i64.trunc_f64_u
    global.set $global_337195977
    br 0
)

)