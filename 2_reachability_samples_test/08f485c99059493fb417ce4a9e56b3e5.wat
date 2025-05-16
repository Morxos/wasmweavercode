(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2833301501 (mut i32) (i32.const -1967240230))
(func $run (export "run")
    (local i32 i64 f32)
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_3
        (f64.const 1.5548686251010262e-127)
        local.get 0
        (i32.const 93)
        i32.popcnt
        i32.xor
        global.set $global_2833301501
        f32.demote_f64
        local.get 0
        i32.eqz
        f64.convert_i32_u
        i32.trunc_f64_u
        f32.convert_i32_s
        f32.le
        (br_table 0 1)
        ;;FLAG_4
    end

    ;;FLAG_1
    nop
    (f32.const 2.652293075811959e+18)
    i64.trunc_f32_s
    (i64.const -65861)
    f64.convert_i64_s
    f64.ceil
    f64.floor
    f32.demote_f64
    (f64.const 1.7512005212601372e-132)
    f64.floor
    i64.trunc_f64_s
    i32.wrap_i64
    i64.extend_i32_s
    local.set 1
    f32.ceil
    local.tee 2
    i64.trunc_f32_s
    i64.ge_s
    (br_table 0)
    ;;FLAG_2
    return
)

)