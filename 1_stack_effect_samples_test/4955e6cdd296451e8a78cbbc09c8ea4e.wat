(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1605997187 f64 (f64.const 1.245764991855317e+18))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    local.get 0
    f32.nearest
    ;;INSPECT
    i64.trunc_f32_u
    i64.eqz
    i32.extend8_s
    i32.extend16_s
    i64.extend_i32_s
    f64.convert_i64_s
    i64.trunc_f64_s
    i64.ctz
    i64.ctz
    f64.convert_i64_s
    f64.neg
    f64.abs
    global.get $global_1605997187
    drop
    f64.floor
    f32.demote_f64
    f32.sqrt
    f32.sqrt
    f32.trunc
    f32.trunc
    f32.abs
    local.set 0
)

)