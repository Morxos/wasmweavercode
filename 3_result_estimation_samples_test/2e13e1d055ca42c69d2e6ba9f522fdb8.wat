(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result i64)
    (local f32)
    (local $temp i32)
    (f64.const 3.1469011784251964e-106)
    i64.trunc_f64_s
    f64.reinterpret_i64
    f64.sqrt
    f64.trunc
    f64.sqrt
    drop
    (i32.const 736)
    i32.popcnt
    (f32.const -5.940953977258481e-20)
    f32.neg
    local.set 0
    i32.eqz
    drop
    local.get 0
    f32.nearest
    i64.trunc_f32_s
)

)