(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result i64)
    (local i64 f64)
    (local $temp i32)
    (i64.const 6669704285471121800)
    local.get 0
    f32.convert_i64_s
    i32.trunc_f32_s
    i32.popcnt
    i32.clz
    f64.convert_i32_u
    local.set 1
)

)