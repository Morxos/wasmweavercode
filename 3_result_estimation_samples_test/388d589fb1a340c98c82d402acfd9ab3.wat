(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_1713853039 f64 (f64.const 2.3831882165032837e+18))
(func $run (export "run") (result f32)
    (local i32)
    (local $temp i32)
    block
        (f64.const 1.0124621414180704e-133)
        f64.neg
        i32.trunc_f64_s
        local.tee 0
        global.get $global_1713853039
        i64.reinterpret_f64
        f32.convert_i64_u
        i64.trunc_f32_s
        i64.extend16_s
        (f64.const 1.367855401011788e-84)
        i64.reinterpret_f64
        i64.lt_u
        i32.lt_u
        br_if 0
    end

    (f64.const 2.804269906673716e-117)
    f64.floor
    f32.demote_f64
    (f32.const 38483008.0)
    f32.eq
    i64.extend_i32_u
    f64.reinterpret_i64
    i64.reinterpret_f64
    i64.extend16_s
    f32.convert_i64_u
)

)