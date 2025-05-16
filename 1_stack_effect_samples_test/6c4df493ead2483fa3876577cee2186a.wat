(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3985715647 (mut i32) (i32.const 1262715569))
(func $run (export "run")
    (local i32 i32)
    (local $temp i32)
    local.get 0
    i64.extend_i32_s
    global.get $global_3985715647
    nop
    f32.convert_i32_u
    (i64.const 5307409691038302645)
    nop
    f32.convert_i64_s
    f32.div
    i64.trunc_f32_u
    ;;INSPECT
    i64.popcnt
    i64.extend16_s
    i64.sub
    i64.extend8_s
    f32.convert_i64_s
    f32.nearest
    f32.abs
    f32.neg
    f32.trunc
    f64.promote_f32
    i64.trunc_f64_u
    global.get $global_3985715647
    local.tee 1
    global.set $global_3985715647
    i64.eqz
    i32.clz
    local.set 0
)

)