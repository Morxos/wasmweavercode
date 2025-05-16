(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1426417521 (mut f32) (f32.const -5.009935177321808e+18))
(func $run (export "run")
    (local i32 f64)
    (local $temp i32)
    local.get 0
    i32.extend8_s
    (f32.const 4.040052599498958e+33)
    f64.promote_f32
    f64.floor
    f64.floor
    local.set 1
    (f32.const 3.810422302314765e-29)
    i32.reinterpret_f32
    i32.div_s
    i32.clz
    ;;INSPECT
    i32.clz
    i32.extend16_s
    i32.clz
    f32.convert_i32_u
    f32.trunc
    global.set $global_1426417521
    (i32.const 783778)
    f32.convert_i32_u
    global.set $global_1426417521
)

)