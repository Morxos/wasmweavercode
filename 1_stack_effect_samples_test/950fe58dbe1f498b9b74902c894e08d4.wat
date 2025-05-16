(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3833429098 (mut f64) (f64.const 7.758811554869324e+18))
(func $run (export "run")
    (local i64 f32)
    (local $temp i32)
    local.get 0
    f64.reinterpret_i64
    global.get $global_3833429098
    f64.ne
    f32.reinterpret_i32
    f32.nearest
    f32.sqrt
    f32.trunc
    f32.sqrt
    local.get 0
    global.get $global_3833429098
    f64.sqrt
    f64.floor
    f64.floor
    nop
    local.get 0
    f64.reinterpret_i64
    i32.trunc_f64_u
    i32.clz
    i32.extend16_s
    f32.reinterpret_i32
    local.set 1
    ;;INSPECT
    f64.nearest
    f64.floor
    drop
    f64.convert_i64_s
    f64.trunc
    global.set $global_3833429098
    drop
)

)