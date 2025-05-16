(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result i32)
    (local i64 f64)
    (local $temp i32)
    local.get 0
    f64.reinterpret_i64
    local.set 1
    local.get 0
    (f32.const -1.518007635559472e-18)
    drop
    i64.eqz
)

)