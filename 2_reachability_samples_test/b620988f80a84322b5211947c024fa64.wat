(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_4114707429 (mut f32) (f32.const 5.94598955822193e+18))
(global $global_2660892203 (mut i32) (i32.const 789551128))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    global.get $global_4114707429
    f64.promote_f32
    (i32.const -5034877)
    drop
    f64.trunc
    (f32.const -7171.2919921875)
    i32.reinterpret_f32
    (i32.const 1587832902)
    i32.le_s
    global.set $global_2660892203
    f32.demote_f64
    f32.sqrt
    (f32.const 1.7758732492965282e-20)
    f32.ne
    i32.clz
    (br_table 0)
    ;;FLAG_1
    nop
    br 0
)

)