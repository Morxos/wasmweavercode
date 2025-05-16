(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3947468356 (mut i64) (i64.const -415861573309583161))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    ;;FLAG_0
    (i64.const 7727)
    global.set $global_3947468356
    (f32.const 2.4582621144264806e+23)
    f32.abs
    f32.nearest
    f32.neg
    f32.nearest
    f32.ceil
    f32.floor
    i32.reinterpret_f32
    local.tee 0
    i32.extend8_s
    (br_table 0)
    ;;FLAG_1
    return
)

)