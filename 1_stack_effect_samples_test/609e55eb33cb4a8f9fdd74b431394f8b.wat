(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2314123642 (mut f32) (f32.const 2.1479091933596877e+17))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    (i64.const -11709)
    i64.extend32_s
    i64.extend32_s
    f32.convert_i64_u
    global.set $global_2314123642
    ;;INSPECT
    local.get 0
    f32.convert_i64_s
    f32.trunc
    (f32.const 0.0)
    f32.eq
    f32.convert_i32_u
    f32.trunc
    f32.trunc
    i32.trunc_f32_u
    f32.reinterpret_i32
    local.get 0
    f32.convert_i64_s
    f32.sqrt
    f32.min
    i64.trunc_f32_u
    i64.extend32_s
    local.set 0
)

)