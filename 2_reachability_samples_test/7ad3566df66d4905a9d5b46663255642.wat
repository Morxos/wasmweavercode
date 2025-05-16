(module
(type $sig_function_3913293049 (func))
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $function_3913293049 (export "function_3913293049")
    (local f32)
    (local $temp i32)
    ;;FLAG_0
    nop
    (i32.const 565311)
    (f32.const -4.998748240245466e+20)
    local.set 0
    i64.extend_i32_u
    i32.wrap_i64
    (br_table 0)
    ;;FLAG_1
)
(func $run (export "run")
    (local f64)
    (local $temp i32)
    ;;FLAG_2
    (f64.const 9.363951461723613e-102)
    call $function_3913293049
    i32.trunc_f64_u
    (i64.const -6867873)
    f64.convert_i64_s
    call $function_3913293049
    call $function_3913293049
    local.set 0
    (br_table 0)
    ;;FLAG_3
)

)