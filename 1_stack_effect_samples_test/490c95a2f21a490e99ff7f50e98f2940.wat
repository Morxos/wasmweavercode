(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2002802837 (mut i64) (i64.const 4285142233140927861))
(func $run (export "run")
    (local f32 f64 i64 i64)
    (local $temp i32)
    local.get 0
    i32.reinterpret_f32
    local.get 0
    i64.trunc_f32_u
    i64.extend32_s
    f64.convert_i64_s
    f64.trunc
    f64.sqrt
    local.tee 1
    f64.trunc
    ;;INSPECT
    i64.trunc_f64_s
    (i32.const -2019054750)
    f32.reinterpret_i32
    i32.reinterpret_f32
    i32.eqz
    i64.extend_i32_s
    i64.ctz
    f64.convert_i64_s
    f64.sqrt
    f32.demote_f64
    f32.abs
    f32.sqrt
    drop
    i64.clz
    i64.extend32_s
    local.set 2
    i64.extend_i32_s
    i64.clz
    local.tee 3
    f64.convert_i64_s
    f64.neg
    f64.abs
    f64.nearest
    i64.reinterpret_f64
    global.set $global_2002802837
)

)