(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_980396871 (mut i32) (i32.const -1789605246))
(func $run (export "run")
    (local i32 f64)
    (local $temp i32)
    local.get 0
    local.get 0
    i32.extend8_s
    (f32.const 6.1283740735760555e+22)
    f64.promote_f32
    f64.floor
    f64.floor
    local.tee 1
    f64.nearest
    f64.nearest
    f64.floor
    ;;INSPECT
    f64.floor
    drop
    i32.lt_u
    i32.clz
    i32.clz
    local.get 0
    i32.lt_u
    f32.reinterpret_i32
    i32.reinterpret_f32
    global.set $global_980396871
    nop
    local.get 0
    i32.clz
    nop
    i32.clz
    i32.popcnt
    i32.clz
    drop
)

)