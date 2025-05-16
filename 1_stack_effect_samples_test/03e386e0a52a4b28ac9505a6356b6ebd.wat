(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i64 i64)
    (local $temp i32)
    local.get 0
    ;;INSPECT
    i64.extend16_s
    i64.eqz
    local.get 0
    i64.extend32_s
    local.tee 1
    i64.popcnt
    i64.clz
    f64.convert_i64_s
    f64.floor
    i32.trunc_f64_u
    i32.gt_s
    (f32.const -1.732702188021322e-38)
    f32.floor
    f32.nearest
    f32.abs
    f32.abs
    i32.reinterpret_f32
    i32.gt_u
    f32.reinterpret_i32
    i64.trunc_f32_u
    i64.clz
    f32.convert_i64_u
    i32.trunc_f32_s
    f64.convert_i32_s
    f64.floor
    f64.sqrt
    f64.sqrt
    f64.sqrt
    f64.floor
    f64.sqrt
    drop
)

)