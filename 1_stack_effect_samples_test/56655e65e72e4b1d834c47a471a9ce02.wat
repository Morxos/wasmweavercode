(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_376446934 (mut i32) (i32.const 482096144))
(func $run (export "run")
    (local f64 f32 i32)
    (local $temp i32)
    (i32.const -133210)
    i32.eqz
    local.get 0
    f64.nearest
    local.get 0
    i32.trunc_f64_u
    i32.popcnt
    i32.popcnt
    ;;INSPECT
    i32.popcnt
    f32.reinterpret_i32
    local.set 1
    local.get 0
    f64.le
    f32.convert_i32_u
    f32.abs
    f32.abs
    i32.reinterpret_f32
    local.tee 2
    i32.div_s
    i32.clz
    f32.reinterpret_i32
    (f32.const 83503.890625)
    f32.copysign
    f32.trunc
    f32.trunc
    (f32.const -0.09540817141532898)
    f32.lt
    i32.clz
    global.set $global_376446934
)

)