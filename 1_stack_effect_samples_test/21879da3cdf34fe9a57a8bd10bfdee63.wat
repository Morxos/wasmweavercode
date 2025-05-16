(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1680875650 f64 (f64.const 7.153254730405356e+18))
(global $global_1227898543 (mut i32) (i32.const 1091695084))
(func $run (export "run")
    (local f32 i32)
    (local $temp i32)
    local.get 0
    global.get $global_1680875650
    drop
    f32.trunc
    f32.trunc
    ;;INSPECT
    f32.trunc
    f32.trunc
    f64.promote_f32
    f64.trunc
    f64.trunc
    i32.trunc_f64_u
    local.set 1
    (i64.const 813833)
    f32.convert_i64_s
    f32.trunc
    f32.trunc
    (i32.const -198104184)
    local.get 0
    i32.reinterpret_f32
    i32.eqz
    i32.eqz
    i32.shr_s
    i32.clz
    global.set $global_1227898543
    i32.reinterpret_f32
    local.set 1
)

)