(module
(type $sig_function_171969118 (func))
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2434014670 (mut f32) (f32.const 7.540430952078508e+18))
(func $function_171969118 (export "function_171969118")
    (local i32)
    (local $temp i32)
    ;;FLAG_0
    local.get 0
    f32.convert_i32_s
    local.get 0
    i32.clz
    i32.popcnt
    i32.clz
    f64.convert_i32_u
    f64.sqrt
    nop
    i32.trunc_f64_s
    drop
    i32.trunc_f32_s
    nop
    (br_table 0)
    ;;FLAG_1
)
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_2
    block
        nop
        global.get $global_2434014670
        call $function_171969118
        f32.ceil
        i32.reinterpret_f32
        i32.ctz
        (br_table 1 0)
        ;;FLAG_4
    end

    ;;FLAG_3
    call $function_171969118
    call $function_171969118
    call $function_171969118
    nop
)

)