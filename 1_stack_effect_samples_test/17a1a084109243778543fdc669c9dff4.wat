(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1234041674 (mut i64) (i64.const -5867894660286915177))
(func $run (export "run")
    (local f32 f32)
    (local $temp i32)
    local.get 0
    local.get 0
    f32.min
    i32.reinterpret_f32
    (f32.const -782078.625)
    f32.neg
    f64.promote_f32
    f64.sqrt
    f64.nearest
    f64.sqrt
    f64.trunc
    f64.sqrt
    i64.reinterpret_f64
    f64.reinterpret_i64
    i64.trunc_f64_s
    i64.eqz
    i32.le_u
    f32.convert_i32_s
    i32.reinterpret_f32
    f32.convert_i32_s
    ;;INSPECT
    local.tee 1
    nop
    i32.trunc_f32_u
    i32.clz
    f32.convert_i32_s
    i64.trunc_f32_u
    f64.convert_i64_s
    f64.abs
    i64.trunc_f64_s
    i64.clz
    i64.extend8_s
    global.set $global_1234041674
)

)