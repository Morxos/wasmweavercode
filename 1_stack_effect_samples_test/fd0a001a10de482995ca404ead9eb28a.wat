(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_532908247 (mut i32) (i32.const 1040724572))
(global $global_926213333 (mut i64) (i64.const 3752284438856644826))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    global.get $global_532908247
    local.tee 0
    global.get $global_532908247
    i32.div_s
    (f32.const -6.781934577203027e-26)
    f32.trunc
    i32.trunc_f32_u
    i32.lt_u
    f32.convert_i32_u
    (f32.const -450925101056.0)
    f32.eq
    f32.convert_i32_u
    f32.trunc
    nop
    i64.trunc_f32_u
    i64.popcnt
    ;;INSPECT
    i64.clz
    global.set $global_926213333
    (i32.const -37)
    f32.reinterpret_i32
    i32.reinterpret_f32
    i32.extend8_s
    local.set 0
)

)