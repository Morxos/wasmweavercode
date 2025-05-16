(module
(type $sig_function_1582167004 (func (param i32 f32) (result i64)))
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1789462206 i32 (i32.const 930106701))
(global $global_4232717388 (mut f32) (f32.const 6.861265368380342e+18))
(func $function_1582167004 (export "function_1582167004") (param i32 f32) (result i64)
    (local $temp i32)
    ;;FLAG_0
    nop
    (f32.const 1.3080374439575552e+16)
    global.set $global_4232717388
    (f64.const 1.4475829717548878e-294)
    (f64.const 2.4392251031297833e+185)
    f32.demote_f64
    f32.sqrt
    f32.sqrt
    local.set 1
    f64.abs
    global.get $global_1789462206
    i32.extend8_s
    i32.ctz
    (i32.const 1211798507)
    i32.shr_s
    f64.convert_i32_s
    f64.neg
    f64.lt
    i32.extend16_s
    i64.extend_i32_s
)
(func $run (export "run")
    (local i32)
    (local $temp i32)
    ;;FLAG_1
    global.get $global_1789462206
    (f32.const 6480761856.0)
    call $function_1582167004
    (f64.const 8.829361188806985e+160)
    (i32.const -6)
    local.set 0
    i64.reinterpret_f64
    i64.div_s
    nop
    local.get 0
    global.get $global_1789462206
    i64.extend_i32_u
    drop
    f64.convert_i32_u
    f64.floor
    f64.sqrt
    i64.trunc_f64_s
    i64.gt_s
    local.get 0
    i32.div_s
    i32.extend8_s
    (br_table 0)
    ;;FLAG_2
    (i64.const -3)
    i64.extend8_s
    i64.clz
    f64.convert_i64_u
    i32.trunc_f64_u
    (br_table 0)
    ;;FLAG_3
)

)