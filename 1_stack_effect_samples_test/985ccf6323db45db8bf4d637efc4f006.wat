(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1700820368 (mut f64) (f64.const -6.425885582014474e+18))
(func $run (export "run")
    (local i64 i64)
    (local $temp i32)
    local.get 0
    local.tee 1
    i64.extend8_s
    i64.extend32_s
    f64.reinterpret_i64
    i64.trunc_f64_u
    i64.ctz
    f64.convert_i64_s
    f64.sqrt
    f64.trunc
    (f32.const 6.623775959014893)
    f32.sqrt
    f32.sqrt
    i64.trunc_f32_s
    i64.popcnt
    f64.convert_i64_s
    f64.trunc
    f64.ne
    local.get 0
    f64.convert_i64_s
    f64.abs
    i64.trunc_f64_s
    f64.convert_i64_u
    f64.nearest
    f64.trunc
    f64.trunc
    f64.sqrt
    f64.sqrt
    global.set $global_1700820368
    (f32.const -3.547920226634957e+16)
    drop
    f32.convert_i32_u
    ;;INSPECT
    drop
)

)