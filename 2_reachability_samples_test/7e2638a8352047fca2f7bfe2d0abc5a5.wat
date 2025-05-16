(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2257253571 (mut i64) (i64.const -4003144459871709345))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    (i32.const 62181729)
    (i64.const -516)
    global.set $global_2257253571
    (i64.const 902302225216599678)
    global.get $global_2257253571
    i64.ge_s
    (i64.const 90)
    global.set $global_2257253571
    i32.shr_s
    br_if 0
    ;;FLAG_1
    br 0
)

)