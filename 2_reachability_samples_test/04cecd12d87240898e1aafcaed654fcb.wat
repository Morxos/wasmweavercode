(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1443507582 (mut i32) (i32.const 346282691))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    (i32.const 786)
    global.set $global_1443507582
    (i32.const 2002454023)
    global.get $global_1443507582
    i32.shr_s
    i64.extend_i32_s
    i64.clz
    f64.convert_i64_s
    i32.trunc_f64_u
    (br_table 0)
    ;;FLAG_1
    br 0
)

)