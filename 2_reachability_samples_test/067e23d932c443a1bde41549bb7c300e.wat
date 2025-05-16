(module
(type $sig_function_214010411 (func (param i32) (result f32)))
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_406938854 (mut f32) (f32.const 8.693374446917911e+18))
(func $function_214010411 (export "function_214010411") (param i32) (result f32)
    (local $temp i32)
    (f32.const 577949056.0)
    (i64.const -97847)
    block (param i64)
        ;;FLAG_0
        drop
        local.get 0
        (f64.const 5.647406746209588e-81)
        f64.nearest
        i32.trunc_f64_u
        i32.extend8_s
        local.get 0
        i32.le_u
        i32.and
        i32.popcnt
        (br_table 0)
        ;;FLAG_1
    end

    i32.trunc_f32_s
    f32.convert_i32_s
)
(func $run (export "run")
    (local f32 f32 f32)
    (local $temp i32)
    block
        (i64.const 0)
        f64.convert_i64_u
        i64.trunc_f64_s
        i32.wrap_i64
        f32.convert_i32_u
        i64.trunc_f32_s
        i64.eqz
        (br_table 0 1)
        (i32.const 11203852)
        (br_table 0 1)
        ;;FLAG_4
    end

    ;;FLAG_2
    nop
    nop
    local.get 0
    i32.reinterpret_f32
    f64.convert_i32_u
    f64.trunc
    (f32.const 8.653909878372286e+22)
    local.tee 1
    local.tee 2
    global.get $global_406938854
    f32.ne
    call $function_214010411
    global.get $global_406938854
    f32.ne
    f32.convert_i32_s
    drop
    f64.ceil
    (i32.const -1838)
    i32.extend16_s
    i64.extend_i32_s
    i64.extend16_s
    i32.wrap_i64
    i64.extend_i32_s
    f64.reinterpret_i64
    f64.le
    i32.popcnt
    nop
    (br_table 0)
    ;;FLAG_3
)

)