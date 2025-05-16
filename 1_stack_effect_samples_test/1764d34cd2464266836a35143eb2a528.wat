(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_694448056 (mut f32) (f32.const 4.4172464580261315e+18))
(global $global_1083911035 (mut i64) (i64.const 2866702151726267529))
(func $run (export "run")
    (local f64 f64 f32)
    (local $temp i32)
    local.get 0
    local.tee 1
    f64.trunc
    f64.trunc
    f64.sqrt
    i64.trunc_f64_u
    i32.wrap_i64
    f32.convert_i32_u
    f32.abs
    f32.nearest
    local.tee 2
    f32.trunc
    f32.floor
    i64.trunc_f32_u
    i64.extend32_s
    f64.reinterpret_i64
    f64.ceil
    f64.abs
    f32.demote_f64
    f32.abs
    f32.neg
    f32.nearest
    ;;INSPECT
    f32.nearest
    f32.floor
    f32.abs
    global.set $global_694448056
    (i64.const 1)
    i64.clz
    f32.convert_i64_u
    i32.trunc_f32_s
    f64.convert_i32_s
    f64.nearest
    f64.floor
    i64.reinterpret_f64
    global.set $global_1083911035
)

)