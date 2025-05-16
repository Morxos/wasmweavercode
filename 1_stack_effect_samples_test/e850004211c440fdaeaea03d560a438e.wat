(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2902726844 (mut i32) (i32.const -731180483))
(func $run (export "run")
    (local f64 i64 i32 i32)
    (local $temp i32)
    local.get 0
    i64.trunc_f64_u
    i64.eqz
    (f32.const 0.07994750887155533)
    f32.abs
    f32.ceil
    f32.ceil
    f32.floor
    i32.reinterpret_f32
    i32.gt_s
    f32.convert_i32_s
    f32.trunc
    i32.reinterpret_f32
    f32.convert_i32_s
    i32.reinterpret_f32
    f32.reinterpret_i32
    f32.trunc
    f32.nearest
    drop
    local.get 0
    f64.trunc
    i64.trunc_f64_u
    local.tee 1
    i64.popcnt
    i64.ctz
    f32.convert_i64_s
    ;;INSPECT
    f32.sqrt
    nop
    i32.reinterpret_f32
    global.get $global_2902726844
    f64.convert_i32_s
    local.set 0
    local.tee 2
    local.tee 3
    global.set $global_2902726844
)

)