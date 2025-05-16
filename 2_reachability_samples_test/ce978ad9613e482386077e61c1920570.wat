(module
(type $sig_function_3756985160 (func (param i64 f32 f64)))
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $function_3756985160 (export "function_3756985160") (param i64 f32 f64)
    (local i32)
    (local $temp i32)
    ;;FLAG_0
    (i64.const 6)
    i64.eqz
    i32.ctz
    (f64.const 1.6064483174484368e-272)
    f32.demote_f64
    i32.trunc_f32_u
    i32.shr_s
    i32.extend8_s
    (br_table 0)
    ;;FLAG_1
    (i64.const -281)
    local.set 0
    (f64.const 2.715952404384151e+194)
    i64.reinterpret_f64
    i64.extend16_s
    f32.convert_i64_u
    f32.floor
    i32.trunc_f32_u
    local.tee 3
    f32.convert_i32_s
    i32.trunc_f32_u
    (br_table 0)
    ;;FLAG_2
)
(func $run (export "run")
    (local f32 f32)
    (local $temp i32)
    ;;FLAG_3
    (i64.const -3509)
    (f32.const 7.589992686872264e+31)
    nop
    f32.floor
    local.tee 0
    f32.sqrt
    (f64.const 1.8104473563185028e+286)
    (f32.const 6.947929715380503e-34)
    nop
    local.tee 1
    local.set 0
    call $function_3756985160
)

)