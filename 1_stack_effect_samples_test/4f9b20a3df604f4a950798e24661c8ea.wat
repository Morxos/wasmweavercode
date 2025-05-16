(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1983464099 (mut f32) (f32.const -9.028717796808196e+18))
(global $global_2228824681 (mut i64) (i64.const 6036131252218470002))
(func $run (export "run")
    (local i64 i32 i64)
    (local $temp i32)
    local.get 0
    local.get 0
    i64.rotr
    i64.ctz
    f64.convert_i64_s
    i64.trunc_f64_s
    i64.eqz
    local.tee 1
    f64.convert_i32_s
    i32.trunc_f64_u
    local.get 0
    i64.eqz
    i32.shr_s
    i32.extend8_s
    f32.convert_i32_s
    global.set $global_1983464099
    local.get 0
    f64.convert_i64_s
    i64.reinterpret_f64
    f64.convert_i64_s
    i64.reinterpret_f64
    local.tee 2
    i64.ctz
    f64.convert_i64_s
    f64.sqrt
    f64.sqrt
    f64.sqrt
    ;;INSPECT
    f64.sqrt
    f64.nearest
    f64.sqrt
    i32.trunc_f64_u
    f64.convert_i32_u
    i64.reinterpret_f64
    global.set $global_2228824681
)

)