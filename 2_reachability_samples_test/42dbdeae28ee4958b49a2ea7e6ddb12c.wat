(module
(type $sig_function_791667739 (func (param i32) (result f64)))
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1306579253 (mut i32) (i32.const -709626151))
(func $function_791667739 (export "function_791667739") (param i32) (result f64)
    (local i32 i64 f32)
    (local $temp i32)
    local.get 0
    local.get 0
    i32.ctz
    i32.mul
    local.tee 1
    i64.extend_i32_u
    local.set 2
    nop
    (f32.const -1.1819453253933855e-27)
    i32.reinterpret_f32
    global.get $global_1306579253
    i32.gt_s
    f32.reinterpret_i32
    f32.ceil
    local.set 3
    local.get 0
    f64.convert_i32_u
)
(func $run (export "run")
    (local f64 i32)
    (local $temp i32)
    block
        (f32.const -3.0689497557919946e-24)
        (f32.const -1.6264563552676067e-24)
        f32.nearest
        f32.le
        call $function_791667739
        i64.trunc_f64_s
        i64.extend16_s
        global.get $global_1306579253
        call $function_791667739
        f64.ceil
        local.set 0
        i64.extend8_s
        i64.eqz
        local.get 0
        f32.demote_f64
        i32.trunc_f32_u
        local.tee 1
        i32.add
        (br_table 1 0)
        ;;FLAG_3
        br 0
    end

    ;;FLAG_0
    (i32.const -776480)
    i64.extend_i32_u
    i64.eqz
    i32.ctz
    (br_table 0)
    ;;FLAG_1
    (i32.const 8)
    (br_table 0)
    block
        (f64.const 1.8709237479471016e+267)
        f64.trunc
        i64.reinterpret_f64
        i64.eqz
        f64.convert_i32_u
        i64.trunc_f64_u
        f64.convert_i64_s
        i64.trunc_f64_u
        i64.eqz
        f64.convert_i32_u
        (i32.const -4)
        drop
        i32.trunc_f64_s
        br_if 0
        ;;FLAG_4
    end

    ;;FLAG_2
)

)