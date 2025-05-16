(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1941478126 (mut i32) (i32.const 2122174419))
(func $run (export "run")
    (local f32 i32)
    (local $temp i32)
    ;;FLAG_0
    (f32.const -4786.7353515625)
    i64.trunc_f32_s
    i64.popcnt
    i32.wrap_i64
    (f64.const 6.950663848522359e-168)
    (i32.const 535)
    global.get $global_1941478126
    i32.shr_s
    i32.extend16_s
    global.set $global_1941478126
    f32.demote_f64
    local.tee 0
    (i64.const 96145)
    i64.eqz
    local.tee 1
    local.get 0
    f32.neg
    i32.trunc_f32_u
    f32.convert_i32_u
    (i32.const 349)
    nop
    global.set $global_1941478126
    i32.reinterpret_f32
    i32.lt_u
    nop
    i32.extend16_s
    f32.convert_i32_s
    f32.nearest
    f32.le
    f32.reinterpret_i32
    (f64.const 3.5897044914078953e-274)
    i64.trunc_f64_u
    f32.convert_i64_u
    f32.le
    i32.shl
    i32.clz
    (br_table 0)
    ;;FLAG_1
)

)