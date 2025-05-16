(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3913500694 (mut f32) (f32.const 3.3520505881530204e+18))
(global $global_1773756239 (mut i32) (i32.const -1821936310))
(func $run (export "run")
    (local i32 f32)
    (local $temp i32)
    local.get 0
    i32.popcnt
    i32.extend16_s
    f32.reinterpret_i32
    i64.trunc_f32_u
    i64.extend32_s
    i64.eqz
    f64.convert_i32_s
    f64.sqrt
    f32.demote_f64
    i64.trunc_f32_u
    i64.eqz
    (f32.const 361454079311872.0)
    local.tee 1
    i32.reinterpret_f32
    i32.div_s
    i32.clz
    ;;INSPECT
    (f32.const 966831.875)
    f32.sqrt
    global.set $global_3913500694
    global.set $global_1773756239
)

)