(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f64 i64 f32)
    (local $temp i32)
    ;;FLAG_0
    (f64.const 1.0416143614868481e+134)
    f64.abs
    f64.abs
    local.get 0
    f64.trunc
    f64.le
    (i64.const -7421272041223807270)
    i64.ctz
    local.tee 1
    i64.eqz
    i32.sub
    f32.reinterpret_i32
    nop
    local.tee 2
    i32.trunc_f32_u
    (br_table 0)
    ;;FLAG_1
    br 0
)

)