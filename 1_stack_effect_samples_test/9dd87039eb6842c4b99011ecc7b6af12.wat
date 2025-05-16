(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2674835063 (mut i32) (i32.const -962444784))
(func $run (export "run")
    (local i32 f32 i64)
    (local $temp i32)
    (f32.const 1701.6820068359375)
    (i32.const -2)
    local.tee 0
    f32.convert_i32_s
    f32.floor
    i64.trunc_f32_s
    f32.convert_i64_s
    i32.reinterpret_f32
    local.set 0
    local.tee 1
    i32.trunc_f32_s
    i32.ctz
    i32.ctz
    f64.convert_i32_s
    f64.trunc
    i64.reinterpret_f64
    local.set 2
    ;;INSPECT
    local.get 0
    i32.clz
    f32.reinterpret_i32
    i32.reinterpret_f32
    i32.extend8_s
    i32.clz
    global.set $global_2674835063
)

)