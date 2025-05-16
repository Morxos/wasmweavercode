(module
(type $sig_function_714196749 (func))
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3727837196 (mut i64) (i64.const -2787380348228752989))
(func $function_714196749 (export "function_714196749")
    (local i64)
    (local $temp i32)
    ;;FLAG_0
    global.get $global_3727837196
    i64.extend8_s
    global.get $global_3727837196
    i64.or
    i32.wrap_i64
    i64.extend_i32_u
    local.set 0
)
(func $run (export "run")
    (local i32 f32)
    (local $temp i32)
    ;;FLAG_1
    block
        ;;FLAG_4
        (i32.const -769)
        i32.popcnt
        i32.clz
        local.set 0
        (f32.const 674365.375)
        local.tee 1
        f32.abs
        f32.trunc
        f64.promote_f32
        f64.abs
        i64.reinterpret_f64
        drop
    end

    ;;FLAG_2
    nop
    global.get $global_3727837196
    call $function_714196749
    global.get $global_3727837196
    i64.gt_s
    local.get 0
    f32.reinterpret_i32
    i32.trunc_f32_u
    i32.ge_s
    (br_table 0)
    ;;FLAG_3
)

)