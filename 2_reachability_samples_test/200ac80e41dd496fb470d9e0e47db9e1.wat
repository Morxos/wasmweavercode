(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1475298572 (mut f32) (f32.const -3.2300823817591194e+17))
(global $global_3184410783 (mut i32) (i32.const -1051936639))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    (i32.const -135230)
    (f32.const 0.24997277557849884)
    f32.floor
    global.set $global_1475298572
    (i32.const 87392)
    global.set $global_3184410783
    i32.ctz
    (br_table 0)
    ;;FLAG_1
    (i32.const -3755)
    f32.convert_i32_u
    global.get $global_1475298572
    f32.copysign
    f32.sqrt
    drop
    global.get $global_1475298572
    i32.reinterpret_f32
    (br_table 0)
    ;;FLAG_2
    (f64.const 5.85143030337822e-57)
    f32.demote_f64
    f32.trunc
    i64.trunc_f32_u
    i64.eqz
    (br_table 0)
    ;;FLAG_3
    (i32.const -9816)
    (br_table 0)
    ;;FLAG_4
)

)