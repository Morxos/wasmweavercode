(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_613741508 (mut f32) (f32.const -6.903843406410154e+18))
(func $run (export "run")
    (local i32 f64 i32)
    (local $temp i32)
    local.get 0
    i32.popcnt
    i64.extend_i32_s
    i64.popcnt
    f32.convert_i64_u
    f32.neg
    f32.ceil
    i32.reinterpret_f32
    i32.eqz
    local.get 0
    i32.shr_s
    f32.reinterpret_i32
    f32.sqrt
    f32.ceil
    nop
    i64.trunc_f32_u
    i64.clz
    f64.reinterpret_i64
    f64.sqrt
    f64.sqrt
    f64.floor
    i64.reinterpret_f64
    i32.wrap_i64
    f64.convert_i32_s
    local.tee 1
    f64.neg
    f64.sqrt
    f64.sqrt
    f64.neg
    f64.abs
    i64.reinterpret_f64
    drop
    global.get $global_613741508
    ;;INSPECT
    f32.neg
    i32.reinterpret_f32
    local.tee 2
    i32.extend16_s
    f32.convert_i32_u
    drop
)

)