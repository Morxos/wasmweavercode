(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2672949378 (mut f32) (f32.const -2.962143423978537e+18))
(func $run (export "run")
    (local f32 f32 f32)
    (local $temp i32)
    local.get 0
    local.get 0
    f32.min
    i64.trunc_f32_u
    i32.wrap_i64
    i32.extend16_s
    f64.convert_i32_s
    i64.trunc_f64_u
    f64.reinterpret_i64
    f64.trunc
    i64.trunc_f64_u
    i64.eqz
    i64.extend_i32_s
    i64.ctz
    f32.convert_i64_u
    local.tee 1
    f32.abs
    f32.nearest
    f32.ceil
    global.get $global_2672949378
    f32.neg
    ;;INSPECT
    local.tee 2
    f32.sub
    i32.reinterpret_f32
    f32.reinterpret_i32
    drop
)

)