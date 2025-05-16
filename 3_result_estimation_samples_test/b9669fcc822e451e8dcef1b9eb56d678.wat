(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_527934442 (mut i32) (i32.const -1427687868))
(func $run (export "run") (result i32)
    (local i64 f64)
    (local $temp i32)
    (f64.const 7.958254793407579e-152)
    i32.trunc_f64_s
    f32.reinterpret_i32
    f32.floor
    drop
    (i32.const -663599)
    global.set $global_527934442
    (i64.const 264938861)
    local.tee 0
    f64.reinterpret_i64
    local.set 1
    (i32.const 70)
)

)