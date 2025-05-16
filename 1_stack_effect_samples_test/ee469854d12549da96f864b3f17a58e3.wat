(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1063672897 (mut f32) (f32.const -7.548975256937955e+18))
(global $global_4221459641 (mut i32) (i32.const -86217745))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    (f32.const -4.275452055322511e+21)
    f32.neg
    local.tee 0
    global.set $global_1063672897
    (i32.const 946222017)
    ;;INSPECT
    global.set $global_4221459641
    (i32.const 238103)
    f32.convert_i32_u
    f64.promote_f32
    f64.nearest
    drop
    (i32.const 35018198)
    f32.convert_i32_u
    i32.reinterpret_f32
    f32.convert_i32_u
    global.set $global_1063672897
    (i32.const 0)
    global.set $global_4221459641
)

)