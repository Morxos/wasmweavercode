(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3091010034 (mut f32) (f32.const 8.214803764591198e+18))
(func $run (export "run")
    (local i32 f32)
    (local $temp i32)
    local.get 0
    i32.eqz
    i32.extend16_s
    f32.reinterpret_i32
    i32.reinterpret_f32
    i32.popcnt
    f32.convert_i32_s
    local.get 0
    (f32.const -3.8580965817171575e+20)
    f32.neg
    f32.floor
    f64.promote_f32
    f64.abs
    f32.demote_f64
    global.set $global_3091010034
    f32.reinterpret_i32
    f32.eq
    f32.convert_i32_u
    f32.trunc
    f32.trunc
    local.set 1
    ;;INSPECT
    local.get 0
    f32.convert_i32_u
    local.set 1
)

)