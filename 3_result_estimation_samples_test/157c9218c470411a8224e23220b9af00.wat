(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_1892829352 (mut f32) (f32.const 3.72075669424282e+18))
(func $run (export "run") (result f32)
    (local f32)
    (local $temp i32)
    (f32.const -1.3656916689661257e-29)
    f32.abs
    (f64.const 4.105925528116428e+177)
    drop
    local.get 0
    global.set $global_1892829352
    (f32.const -1.1932929418819233e+27)
    local.set 0
    (i64.const -8)
    f64.convert_i64_u
    f64.nearest
    (i64.const -9412783)
    (f64.const 2.8090918890605154e-85)
    drop
    f64.reinterpret_i64
    f64.mul
    f64.nearest
    global.get $global_1892829352
    f64.promote_f32
    i32.trunc_f64_s
    (f32.const 1.7990053874383163e-20)
    drop
    i32.eqz
    f32.convert_i32_s
    f32.ceil
    drop
    i64.reinterpret_f64
    f32.convert_i64_s
    f32.min
)

)