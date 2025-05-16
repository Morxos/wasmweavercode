(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3034589061 (mut i64) (i64.const 8063768127384437708))
(func $run (export "run")
    (local i32 f64)
    (local $temp i32)
    local.get 0
    i64.extend_i32_s
    f64.convert_i64_u
    local.set 1
    (f32.const 2.647309099554413e+20)
    f64.promote_f32
    f64.floor
    ;;INSPECT
    f64.sqrt
    f64.trunc
    f64.trunc
    f64.nearest
    f64.floor
    f64.sqrt
    f64.sqrt
    f64.nearest
    f64.nearest
    f64.abs
    i64.reinterpret_f64
    global.set $global_3034589061
)

)