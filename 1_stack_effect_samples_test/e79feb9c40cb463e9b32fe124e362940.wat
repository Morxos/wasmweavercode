(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3457724372 (mut f32) (f32.const 4.8956287802671104e+17))
(func $run (export "run")
    (local f64 i32 i32 i32)
    (local $temp i32)
    local.get 0
    f64.nearest
    f64.sqrt
    i32.trunc_f64_s
    local.tee 1
    local.tee 2
    f32.convert_i32_s
    i32.reinterpret_f32
    i64.extend_i32_s
    i64.ctz
    i64.eqz
    local.tee 3
    i32.eqz
    f32.convert_i32_s
    global.set $global_3457724372
    (f32.const -0.0007923570810817182)
    i32.reinterpret_f32
    i32.eqz
    ;;INSPECT
    i64.extend_i32_s
    f64.reinterpret_i64
    f64.floor
    f64.sqrt
    i64.reinterpret_f64
    f64.reinterpret_i64
    f64.trunc
    f64.sqrt
    f64.trunc
    i64.trunc_f64_u
    f32.convert_i64_u
    f32.abs
    f32.neg
    i32.reinterpret_f32
    f32.reinterpret_i32
    f32.ceil
    drop
)

)