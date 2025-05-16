(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_765299994 (mut i64) (i64.const -2277559638798371934))
(global $global_2780055446 (mut i32) (i32.const -1280967289))
(func $run (export "run")
    (local f32 f64)
    (local $temp i32)
    ;;FLAG_0
    nop
    global.get $global_765299994
    i64.eqz
    global.set $global_2780055446
    (i32.const -13549889)
    i32.popcnt
    (br_table 0)
    ;;FLAG_1
    global.get $global_765299994
    nop
    f32.convert_i64_u
    local.tee 0
    nop
    (f32.const 6.729607647047188e+18)
    f32.ne
    i32.extend16_s
    i32.clz
    (f64.const 5.599560838983254e+225)
    i64.reinterpret_f64
    i64.eqz
    local.get 0
    f64.promote_f32
    local.tee 1
    drop
    i32.shr_s
    (br_table 0)
    ;;FLAG_2
)

)