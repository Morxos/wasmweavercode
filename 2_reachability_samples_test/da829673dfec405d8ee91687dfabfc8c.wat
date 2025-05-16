(module
(type $sig_function_2550302274 (func (param i32)))
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2623543249 (mut i32) (i32.const -1007239973))
(global $global_1754874190 (mut i64) (i64.const -7952059040044347932))
(func $function_2550302274 (export "function_2550302274") (param i32)
    (local $temp i32)
    ;;FLAG_0
    (i64.const 10378855)
    (i32.const 678093)
    i64.extend_i32_u
    i64.ge_s
    (i64.const 593)
    global.set $global_1754874190
    (br_table 0)
    ;;FLAG_1
    return
)
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_2
    block
        ;;FLAG_3
        (i32.const -90255271)
        nop
        global.set $global_2623543249
        (i32.const 948)
        i32.clz
        (i32.const -628735050)
        i32.eq
        i64.extend_i32_s
        f32.convert_i64_u
        i32.reinterpret_f32
        (br_table 0 1)
        ;;FLAG_4
    end

    global.get $global_2623543249
    i32.extend16_s
    i32.popcnt
    f32.convert_i32_u
    f32.ceil
    i32.trunc_f32_s
    call $function_2550302274
)

)