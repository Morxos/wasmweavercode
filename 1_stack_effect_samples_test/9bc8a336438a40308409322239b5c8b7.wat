(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_970089425 (mut i32) (i32.const -1115403961))
(func $run (export "run")
    (local i64 i64)
    (local $temp i32)
    (f32.const -45718.40625)
    f32.abs
    f32.sqrt
    f32.sqrt
    f32.floor
    f32.ceil
    i64.trunc_f32_s
    f64.convert_i64_s
    f64.sqrt
    i64.trunc_f64_u
    i64.ctz
    i64.eqz
    i64.extend_i32_s
    i64.extend32_s
    i64.ctz
    i64.extend32_s
    f64.convert_i64_s
    i64.trunc_f64_s
    local.tee 0
    i64.ctz
    local.tee 1
    i64.popcnt
    f32.convert_i64_u
    i64.trunc_f32_s
    f32.convert_i64_s
    ;;INSPECT
    f32.ceil
    f32.sqrt
    f32.sqrt
    f32.sqrt
    f32.nearest
    f32.sqrt
    f32.trunc
    f32.trunc
    f32.trunc
    i32.trunc_f32_u
    global.set $global_970089425
)

)