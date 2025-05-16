(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_1374799714 (mut f64) (f64.const 7.793361531285359e+18))
(func $run (export "run") (result i32)
    (local f32)
    (local $temp i32)
    (f64.const 5.1392976486575444e-185)
    global.set $global_1374799714
    global.get $global_1374799714
    i64.trunc_f64_u
    f64.reinterpret_i64
    (f32.const -4.541727671031337e-12)
    f64.promote_f32
    f64.min
    f64.abs
    i32.trunc_f64_s
    i64.extend_i32_u
    f64.reinterpret_i64
    (f64.const 4.205352576273852e-159)
    f64.copysign
    (f32.const -1.3576905719684392e-19)
    local.set 0
    i32.trunc_f64_s
)

)