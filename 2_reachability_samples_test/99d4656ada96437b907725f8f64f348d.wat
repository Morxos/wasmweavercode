(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3058251642 (mut i32) (i32.const -1399725050))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    ;;FLAG_0
    (f32.const 2.878462192770666e-20)
    i32.reinterpret_f32
    global.set $global_3058251642
    global.get $global_3058251642
    global.get $global_3058251642
    i32.shr_u
    f64.convert_i32_u
    drop
    global.get $global_3058251642
    f64.convert_i32_s
    (f64.const 2.3800720087256697e-54)
    f64.le
    (i64.const 1)
    i32.wrap_i64
    i32.rotl
    nop
    (br_table 0)
    ;;FLAG_1
    (i32.const 547)
    global.get $global_3058251642
    i32.shr_s
    (br_table 0)
    ;;FLAG_2
    local.get 0
    local.get 0
    f32.abs
    f32.le
    (br_table 0)
    ;;FLAG_3
)

)