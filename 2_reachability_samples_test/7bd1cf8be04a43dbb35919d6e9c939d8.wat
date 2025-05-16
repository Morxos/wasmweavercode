(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2909536970 (mut f32) (f32.const 4.5305395863963566e+18))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    ;;FLAG_0
    (f64.const 5.479249156846754e+279)
    i64.reinterpret_f64
    (i64.const -9809)
    i64.eq
    nop
    (br_table 0)
    ;;FLAG_1
    global.get $global_2909536970
    local.set 0
    br 0
)

)