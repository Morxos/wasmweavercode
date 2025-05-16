(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_648821231 (mut f64) (f64.const -4.591757453580851e+18))
(func $run (export "run") (result i32)
    (local $temp i32)
    (f32.const 1.0399709840598368e+19)
    f64.promote_f32
    global.set $global_648821231
    (i64.const -704608186)
    (i64.const -14)
    i64.rotr
    f64.convert_i64_s
    nop
    f64.nearest
    f64.neg
    f64.sqrt
    f64.floor
    i32.trunc_f64_s
)

)