(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1910663447 (mut f32) (f32.const -5.356201625478234e+18))
(global $global_1454084776 (mut i32) (i32.const 693787110))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    global.get $global_1910663447
    (i32.const 4297776)
    f64.convert_i32_u
    drop
    (f32.const -0.0012839973205700517)
    f32.le
    i32.popcnt
    global.set $global_1454084776
    br 0
)

)