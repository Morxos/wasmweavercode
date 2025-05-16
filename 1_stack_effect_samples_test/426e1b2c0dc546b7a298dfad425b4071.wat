(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_500702157 (mut f32) (f32.const -2.7671020871195034e+17))
(func $run (export "run")
    (local i32 i32 i32)
    (local $temp i32)
    local.get 0
    f32.convert_i32_u
    f32.abs
    f32.ceil
    i32.reinterpret_f32
    f32.convert_i32_s
    ;;INSPECT
    i64.trunc_f32_u
    f32.convert_i64_u
    i64.trunc_f32_u
    i64.clz
    f32.convert_i64_s
    i32.reinterpret_f32
    i32.clz
    local.tee 1
    f32.convert_i32_u
    f32.abs
    i32.reinterpret_f32
    local.tee 2
    f64.convert_i32_u
    f64.nearest
    drop
    (f32.const -1.1513316337400052e-28)
    i32.reinterpret_f32
    f32.reinterpret_i32
    i32.reinterpret_f32
    i32.extend16_s
    i32.clz
    i32.clz
    i32.clz
    local.get 0
    i32.lt_u
    f32.convert_i32_u
    global.set $global_500702157
)

)