(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3287257314 (mut f32) (f32.const 8.641430219086889e+17))
(func $run (export "run")
    (local f64)
    (local $temp i32)
    ;;FLAG_0
    (i32.const 422248212)
    nop
    i32.ctz
    (f64.const 3.3682658492680643e+19)
    f64.floor
    (f32.const -7.828777231523587e-13)
    global.set $global_3287257314
    local.tee 0
    f32.demote_f64
    (f32.const 1.4306474428511054e+29)
    f32.ne
    i32.add
    (br_table 0)
    ;;FLAG_1
    (i64.const -6044)
    i64.eqz
    (br_table 0)
    ;;FLAG_2
    return
)

)