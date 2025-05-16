(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    ;;FLAG_0
    nop
    (f32.const 7.465239852980634e+16)
    i32.reinterpret_f32
    (i32.const 4540)
    i32.rem_s
    i64.extend_i32_u
    local.tee 0
    nop
    i64.extend8_s
    i64.ctz
    i64.popcnt
    (f32.const 6.493447113342654e-09)
    (f32.const 3.4479938904041774e-08)
    f32.le
    i64.extend_i32_u
    i64.div_u
    drop
    (i32.const 3)
    (br_table 0)
    ;;FLAG_1
    br 0
)

)