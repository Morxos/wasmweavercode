(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3877585225 (mut f64) (f64.const -6.265940961555323e+18))
(global $global_3652847451 (mut f32) (f32.const -6.091663853785973e+18))
(func $run (export "run")
    (local f32 f64 f64 f64)
    (local $temp i32)
    local.get 0
    i64.trunc_f32_u
    i64.popcnt
    i64.ctz
    f64.convert_i64_s
    i64.trunc_f64_u
    f64.convert_i64_s
    f64.sqrt
    ;;INSPECT
    local.tee 1
    local.get 0
    i64.trunc_f32_u
    f64.convert_i64_s
    local.tee 2
    i64.trunc_f64_s
    i64.extend32_s
    i64.eqz
    f64.convert_i32_s
    i32.trunc_f64_u
    i32.eqz
    f64.convert_i32_u
    global.set $global_3877585225
    f64.nearest
    f64.trunc
    global.get $global_3877585225
    f64.sub
    f64.nearest
    f64.sqrt
    f64.floor
    i32.trunc_f64_u
    f32.convert_i32_s
    global.set $global_3652847451
    global.get $global_3877585225
    f64.neg
    f64.sqrt
    f64.abs
    f64.sqrt
    local.tee 3
    f64.sqrt
    local.set 1
)

)