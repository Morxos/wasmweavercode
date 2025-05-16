(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2421815261 (mut f64) (f64.const 6.709024717335982e+17))
(global $global_2879786180 (mut f32) (f32.const -1.6076888597038367e+18))
(global $global_3536065210 (mut i32) (i32.const -966481743))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    ;;INSPECT
    (i64.const 28194)
    i64.popcnt
    f64.convert_i64_u
    f64.abs
    i64.trunc_f64_u
    i64.ctz
    f32.convert_i64_u
    i64.trunc_f32_u
    i64.clz
    f32.convert_i64_s
    f32.sqrt
    f32.sqrt
    i64.trunc_f32_s
    i64.clz
    i32.wrap_i64
    i32.extend8_s
    f32.convert_i32_s
    f32.floor
    f32.sqrt
    global.get $global_2421815261
    f32.demote_f64
    f32.max
    local.set 0
    (i32.const 3)
    f32.convert_i32_u
    i32.trunc_f32_u
    f32.convert_i32_u
    local.get 0
    f32.lt
    i32.extend8_s
    f32.convert_i32_u
    global.set $global_2879786180
    (i32.const 36264333)
    global.set $global_3536065210
)

)