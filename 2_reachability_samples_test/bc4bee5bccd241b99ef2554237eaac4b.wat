(module
(type $sig_function_2961092326 (func (param f64) (result f32)))
(type $sig_function_2170160427 (func (param i32) (result i32)))
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $function_2961092326 (export "function_2961092326") (param f64) (result f32)
    (local i64)
    (local $temp i32)
    (f64.const 1.4141058758472282e-42)
    i64.reinterpret_f64
    local.tee 1
    f64.convert_i64_u
    i64.reinterpret_f64
    f32.convert_i64_s
    (f32.const 4.264660889814865e+36)
    f32.ne
    i64.extend_i32_s
    i32.wrap_i64
    f32.convert_i32_s
    (i64.const -16019)
    i64.extend16_s
    i64.extend8_s
    i64.eqz
    (br_table 0)
    ;;FLAG_0
    f32.trunc
    return
)
(func $function_2170160427 (export "function_2170160427") (param i32) (result i32)
    (local i64)
    (local $temp i32)
    ;;FLAG_1
    local.get 0
    local.set 0
    (i32.const 3)
    i32.ctz
    f64.convert_i32_u
    call $function_2961092326
    i32.reinterpret_f32
    (i64.const -35237717)
    local.tee 1
    i64.popcnt
    i64.extend8_s
    local.set 1
    i32.ctz
)
(func $run (export "run")
    (local i64)
    (local $temp i32)
    (i32.const 2018708748)
    i32.extend16_s
    f32.reinterpret_i32
    i32.trunc_f32_s
    i32.clz
    f64.convert_i32_u
    f64.sqrt
    i32.trunc_f64_s
    (br_table 0)
    ;;FLAG_2
    (f32.const 2.4693168516887187e-12)
    i32.reinterpret_f32
    i32.extend16_s
    call $function_2170160427
    (br_table 0)
    ;;FLAG_3
    nop
    (f64.const 1.712415231815034e+122)
    i64.reinterpret_f64
    local.tee 0
    i64.eqz
    (br_table 0)
    ;;FLAG_4
)

)