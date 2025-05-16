(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2532715946 (mut i32) (i32.const -790313218))
(global $global_121417258 (mut i64) (i64.const -3309469264298969784))
(func $run (export "run")
    (local f64 i64)
    (local $temp i32)
    ;;INSPECT
    local.get 0
    f64.nearest
    f64.trunc
    i64.reinterpret_f64
    i64.eqz
    f32.convert_i32_u
    f32.neg
    f32.ceil
    f32.abs
    i64.trunc_f32_u
    f64.convert_i64_s
    f64.sqrt
    f32.demote_f64
    i32.reinterpret_f32
    global.set $global_2532715946
    nop
    global.get $global_2532715946
    i64.extend_i32_s
    local.tee 1
    nop
    global.set $global_121417258
    (i32.const -367)
    f32.reinterpret_i32
    drop
)

)