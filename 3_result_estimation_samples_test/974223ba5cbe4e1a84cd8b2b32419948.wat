(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_720207714 (mut f64) (f64.const -5.71571948137189e+18))
(func $run (export "run") (result i64)
    (local i64 f32)
    (local $temp i32)
    global.get $global_720207714
    i64.trunc_f64_s
    i64.ctz
    local.set 0
    (f32.const -3.6603893400557077e-37)
    local.tee 1
    f32.neg
    i64.trunc_f32_s
)

)