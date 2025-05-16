(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i32 i64 f64)
    (local $temp i32)
    ;;FLAG_0
    (i32.const -51725)
    local.get 0
    i32.le_s
    (f32.const 1.1911862499217294e+27)
    f64.promote_f32
    (i64.const 2)
    i64.clz
    local.set 1
    local.set 2
    i32.popcnt
    (br_table 0)
    ;;FLAG_1
    br 0
)

)