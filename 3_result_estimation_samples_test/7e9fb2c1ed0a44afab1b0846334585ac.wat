(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_3299210028 (mut i32) (i32.const -492290961))
(global $global_2655974668 (mut f64) (f64.const -5.466238023239442e+18))
(global $global_4272445433 (mut i64) (i64.const -1129729256050038698))
(func $run (export "run") (result f64)
    (local i32 f64 f32)
    (local $temp i32)
    global.get $global_3299210028
    i32.clz
    local.tee 0
    (i32.const -146)
    i32.ge_u
    if
        local.get 0
        i32.extend16_s
        f64.convert_i32_u
        (f64.const 7.086664608500614e-224)
        f64.copysign
        i64.trunc_f64_s
        nop
        i64.ctz
        global.set $global_4272445433
    else
        (i32.const -2833)
        i32.extend16_s
        i32.extend16_s
        (f32.const 5.532266634621065e-22)
        drop
        i64.extend_i32_s
        local.get 0
        f32.reinterpret_i32
        (i32.const -548)
        f32.reinterpret_i32
        (i64.const -45)
        f64.reinterpret_i64
        f64.ceil
        f64.nearest
        global.set $global_2655974668
        (f64.const 4.417618639312684e-200)
        f64.abs
        i32.trunc_f64_u
        f64.convert_i32_s
        f64.neg
        local.set 1
        f32.trunc
        f32.eq
        global.set $global_3299210028
        i64.clz
        i64.extend8_s
        drop
    end

    (f32.const -0.0006689130095764995)
    local.set 2
    local.get 0
    f32.convert_i32_u
    i64.trunc_f32_s
    i64.extend8_s
    f64.convert_i64_s
)

)