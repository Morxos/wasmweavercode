(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3119909916 (mut i64) (i64.const 7617115344196726698))
(func $run (export "run")
    (local i64 f64)
    (local $temp i32)
    ;;FLAG_0
    global.get $global_3119909916
    local.set 0
    (f32.const 0.0)
    i32.reinterpret_f32
    (f64.const 1.0207565280375072e+62)
    local.set 1
    drop
    return
)

)