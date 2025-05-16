(module
(type $sig_function_1440337997 (func (param f32) (result f64)))
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2882771831 (mut f32) (f32.const -6.476771649705214e+18))
(func $function_1440337997 (export "function_1440337997") (param f32) (result f64)
    (local $temp i32)
    ;;FLAG_0
    (i32.const -558519)
    (i32.const 1757092389)
    i32.shr_u
    f32.reinterpret_i32
    (i32.const 21348)
    (i32.const 396249613)
    i32.rem_u
    drop
    i32.trunc_f32_s
    (i32.const 3925)
    f32.convert_i32_u
    i32.reinterpret_f32
    i32.shr_u
    (i32.const 718728)
    i32.le_s
    f32.reinterpret_i32
    nop
    f64.promote_f32
)
(func $run (export "run")
    (local f32 f64)
    (local $temp i32)
    ;;FLAG_1
    nop
    global.get $global_2882771831
    f32.trunc
    local.tee 0
    call $function_1440337997
    local.set 1
)

)