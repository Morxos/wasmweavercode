(module
(type $sig_function_1953489329 (func (param i64 i32)))
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2303743885 i32 (i32.const 301263012))
(func $function_1953489329 (export "function_1953489329") (param i64 i32)
    (local i64)
    (local $temp i32)
    (f32.const 3.7221434823209165e-09)
    i32.trunc_f32_u
    f64.convert_i32_s
    (f64.const 9.110113100075851e-242)
    f64.le
    (i64.const 2728438263505877024)
    i64.extend32_s
    i64.extend8_s
    f64.reinterpret_i64
    block (param i32 f64) (result i64)
        ;;FLAG_1
        i64.reinterpret_f64
        i64.eqz
        i32.mul
        i32.extend8_s
        drop
        local.get 0
    end

    i64.clz
    local.tee 2
    f64.convert_i64_s
    f64.neg
    i32.trunc_f64_s
    global.get $global_2303743885
    i32.shr_s
    (br_table 0)
    ;;FLAG_0
)
(func $run (export "run")
    (local i32 f32)
    (local $temp i32)
    ;;FLAG_2
    block
        global.get $global_2303743885
        f32.convert_i32_s
        f64.promote_f32
        f64.floor
        f64.sqrt
        f64.floor
        f64.nearest
        i64.trunc_f64_s
        i64.eqz
        local.set 0
        (f32.const 2.0041514021268414e-12)
        nop
        f32.neg
        i32.reinterpret_f32
        (br_table 1 0)
        ;;FLAG_4
    end

    ;;FLAG_3
    global.get $global_2303743885
    f32.convert_i32_s
    local.set 1
    (i32.const 398034)
    (f32.const -1.378549913111371e-10)
    i32.reinterpret_f32
    i32.ctz
    i32.lt_u
    i32.extend8_s
    i64.extend_i32_s
    i64.extend16_s
    i64.extend16_s
    global.get $global_2303743885
    call $function_1953489329
    br 0
)

)