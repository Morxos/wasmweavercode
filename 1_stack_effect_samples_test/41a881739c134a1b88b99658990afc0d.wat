(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3822404486 (mut f64) (f64.const 2.0485714288065065e+18))
(func $run (export "run")
    (local f32 f32 i32)
    (local $temp i32)
    (f32.const -108370279268352.0)
    f32.neg
    f64.promote_f32
    global.set $global_3822404486
    local.get 0
    f32.trunc
    i64.trunc_f32_u
    f32.convert_i64_s
    f32.sqrt
    f32.sqrt
    f32.sqrt
    f32.trunc
    f32.floor
    f32.ceil
    f32.sqrt
    f32.trunc
    f32.trunc
    f32.nearest
    f32.trunc
    ;;INSPECT
    f32.abs
    i32.reinterpret_f32
    i32.eqz
    i32.clz
    f32.convert_i32_s
    f32.abs
    f32.floor
    local.tee 1
    i32.trunc_f32_u
    local.tee 2
    f32.convert_i32_s
    f32.trunc
    f32.trunc
    i32.reinterpret_f32
    f32.convert_i32_u
    f32.trunc
    drop
)

)