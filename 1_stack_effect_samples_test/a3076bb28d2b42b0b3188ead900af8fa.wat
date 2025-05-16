(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1544061703 (mut f32) (f32.const 6.192054213204247e+18))
(global $global_2909705696 (mut i32) (i32.const -73994736))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    (f32.const 2.4283746125064454e-09)
    i32.trunc_f32_u
    i32.extend8_s
    i64.extend_i32_s
    i64.extend16_s
    i32.wrap_i64
    i32.clz
    f64.convert_i32_s
    i64.reinterpret_f64
    f32.convert_i64_s
    local.tee 0
    global.set $global_1544061703
    (f32.const 0.021439621224999428)
    ;;INSPECT
    (i32.const -590)
    (i32.const 205177309)
    i32.div_s
    global.set $global_2909705696
    i32.reinterpret_f32
    global.set $global_2909705696
)

)