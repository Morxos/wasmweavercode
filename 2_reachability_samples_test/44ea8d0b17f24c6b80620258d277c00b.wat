(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2472752225 i32 (i32.const -1736596133))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    (i64.const -9114)
    f32.convert_i64_s
    i32.trunc_f32_s
    global.get $global_2472752225
    i32.gt_u
    f32.reinterpret_i32
    (f64.const 8.146088944593495e+119)
    i64.reinterpret_f64
    i64.ctz
    drop
    f32.sqrt
    f32.sqrt
    i32.reinterpret_f32
    (br_table 0)
    ;;FLAG_1
    (i32.const 1653472)
    (br_table 0)
    ;;FLAG_2
    br 0
)

)