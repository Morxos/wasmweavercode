(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2931755562 (mut i32) (i32.const 712004828))
(global $global_3142751341 (mut f64) (f64.const 1.950035250102698e+18))
(func $run (export "run")
    (local i32 f64)
    (local $temp i32)
    ;;FLAG_0
    (i32.const 3)
    local.set 0
    (f32.const -1.7119380926187438e+18)
    i32.reinterpret_f32
    i32.extend16_s
    f64.convert_i32_u
    (i64.const -7965228)
    i32.wrap_i64
    f32.reinterpret_i32
    global.get $global_2931755562
    local.set 0
    local.get 0
    (f32.const -6.181229820924664e-39)
    i32.reinterpret_f32
    i32.le_s
    (f64.const 159900313.642568)
    i64.trunc_f64_u
    i64.extend16_s
    i64.popcnt
    i32.wrap_i64
    i32.div_s
    f32.convert_i32_u
    (f64.const 3.3798983961769e-243)
    local.set 1
    f32.ne
    i32.ctz
    f32.convert_i32_u
    drop
    global.set $global_3142751341
)

)