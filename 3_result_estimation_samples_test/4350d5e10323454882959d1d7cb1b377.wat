(module
(type $sig_function_148803648 (func))
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_2306935659 (mut f32) (f32.const 1.3060367451118633e+18))
(global $global_3578733926 (mut i32) (i32.const -1600019230))
(func $function_148803648 (export "function_148803648")
    (local i64)
    (local $temp i32)
    (i32.const 2846)
    i64.extend_i32_u
    f32.convert_i64_u
    i32.reinterpret_f32
    i32.extend16_s
    block
        local.get 0
        i64.extend16_s
        f64.convert_i64_u
        i32.trunc_f64_s
        i32.ctz
        br_if 0
    end

    br_if 0
)
(func $run (export "run") (result f64)
    (local i32)
    (local $temp i32)
    block
        (i32.const -904806)
        f32.reinterpret_i32
        global.set $global_2306935659
        local.get 0
        (f32.const -3.7845510916320153e+37)
        f32.neg
        f32.nearest
        global.set $global_2306935659
        i32.extend16_s
        (br_table 0)
        (i64.const 896721)
        (f32.const 2.525021821739208e+36)
        global.get $global_2306935659
        f32.copysign
        i32.reinterpret_f32
        global.set $global_3578733926
        f32.convert_i64_u
        drop
    end

    nop
    local.get 0
    call $function_148803648
    i32.ctz
    f64.convert_i32_s
)

)