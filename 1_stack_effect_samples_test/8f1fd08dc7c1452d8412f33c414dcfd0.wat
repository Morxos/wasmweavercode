(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2027093798 (mut i32) (i32.const -917831526))
(func $run (export "run")
    (local i32 i64)
    (local $temp i32)
    global.get $global_2027093798
    f64.convert_i32_s
    f64.abs
    f64.floor
    f64.sqrt
    i32.trunc_f64_u
    local.tee 0
    i32.clz
    (f32.const 2.0215826998638706e+33)
    f64.promote_f32
    f64.nearest
    f64.floor
    f64.floor
    f64.nearest
    ;;INSPECT
    f64.sqrt
    f64.nearest
    f64.sqrt
    i64.trunc_f64_s
    local.tee 1
    i64.clz
    i64.popcnt
    i64.popcnt
    i64.popcnt
    (f32.const -2.4463808718622187e+28)
    drop
    i64.popcnt
    i64.popcnt
    i64.popcnt
    i64.popcnt
    i64.popcnt
    drop
    drop
)

)