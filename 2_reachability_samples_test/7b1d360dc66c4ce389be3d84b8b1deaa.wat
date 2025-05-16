(module
(type $sig_function_4126028133 (func (param f64)))
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $function_4126028133 (export "function_4126028133") (param f64)
    (local $temp i32)
    ;;FLAG_0
    (i64.const 65)
    i64.eqz
    f32.convert_i32_s
    i32.trunc_f32_u
    f32.convert_i32_s
    i32.trunc_f32_u
    drop
)
(func $run (export "run")
    (local f32 i32)
    (local $temp i32)
    ;;FLAG_1
    (f32.const 4.054573475589115e-24)
    (i32.const -10)
    f32.reinterpret_i32
    f32.le
    local.get 0
    f32.neg
    local.get 0
    i64.trunc_f32_s
    i64.clz
    (f32.const -26276.068359375)
    i32.reinterpret_f32
    (f64.const 2.7065488025261293e+118)
    call $function_4126028133
    f64.convert_i32_u
    nop
    i64.trunc_f64_s
    i64.shl
    (f32.const -2.463556030216044e+27)
    local.get 0
    f32.eq
    i32.extend16_s
    (i64.const 50647750)
    f32.convert_i64_s
    f32.nearest
    i64.trunc_f32_s
    f32.convert_i64_u
    local.set 0
    i32.eqz
    i32.eqz
    f32.convert_i32_u
    i32.trunc_f32_u
    f32.convert_i32_s
    i32.trunc_f32_u
    i32.ctz
    local.tee 1
    i32.ctz
    f64.convert_i32_u
    i64.reinterpret_f64
    i64.eq
    f32.convert_i32_s
    i64.trunc_f32_u
    i64.extend8_s
    f32.convert_i64_u
    f32.abs
    f32.le
    i32.shl
    f32.convert_i32_u
    (f32.const 1.3075014327304304e-21)
    f32.le
    i64.extend_i32_s
    i64.extend16_s
    i64.extend16_s
    i32.wrap_i64
    (br_table 0)
    ;;FLAG_2
)

)