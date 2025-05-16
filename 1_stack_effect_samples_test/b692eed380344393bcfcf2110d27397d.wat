(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2187098614 (mut i64) (i64.const -6420744175587915045))
(func $run (export "run")
    (local f32 i32 f32)
    (local $temp i32)
    ;;INSPECT
    local.get 0
    f32.sqrt
    i64.trunc_f32_u
    f64.convert_i64_s
    f32.demote_f64
    local.get 0
    f32.min
    i64.trunc_f32_u
    i64.ctz
    global.set $global_2187098614
    global.get $global_2187098614
    f64.reinterpret_i64
    (f32.const 1.8950055391542264e-07)
    i32.reinterpret_f32
    local.tee 1
    f32.convert_i32_u
    (i32.const 0)
    local.set 1
    local.tee 2
    f32.ceil
    f32.ceil
    f32.trunc
    f32.sqrt
    i32.trunc_f32_u
    drop
    f64.nearest
    f64.nearest
    i64.reinterpret_f64
    f64.convert_i64_s
    i64.reinterpret_f64
    global.set $global_2187098614
)

)