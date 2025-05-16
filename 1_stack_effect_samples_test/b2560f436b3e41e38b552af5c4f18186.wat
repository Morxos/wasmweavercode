(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2253259823 (mut i64) (i64.const -3333278186819702513))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    local.get 0
    local.get 0
    f32.convert_i32_s
    i32.reinterpret_f32
    i32.shr_s
    i32.extend16_s
    i64.extend_i32_s
    i64.eqz
    (f32.const 1.564837481815573e-09)
    local.get 0
    f32.convert_i32_u
    f32.min
    f32.trunc
    local.get 0
    i32.eqz
    local.get 0
    i32.shr_s
    i64.extend_i32_s
    nop
    i64.extend32_s
    i32.wrap_i64
    i32.eqz
    i64.extend_i32_s
    i32.wrap_i64
    i32.extend16_s
    f32.reinterpret_i32
    f32.add
    drop
    f64.convert_i32_s
    f64.sqrt
    i64.reinterpret_f64
    i32.wrap_i64
    f64.convert_i32_s
    ;;INSPECT
    f64.sqrt
    i64.reinterpret_f64
    global.set $global_2253259823
)

)