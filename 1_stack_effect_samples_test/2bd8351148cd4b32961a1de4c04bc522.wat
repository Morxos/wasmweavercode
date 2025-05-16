(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3977119058 f32 (f32.const 1.364928924357755e+18))
(func $run (export "run")
    (local f64 f64 f32 i32)
    (local $temp i32)
    local.get 0
    i64.reinterpret_f64
    f64.reinterpret_i64
    f64.trunc
    f64.trunc
    f64.trunc
    f64.abs
    local.tee 1
    f64.abs
    i32.trunc_f64_u
    global.get $global_3977119058
    f32.sqrt
    local.tee 2
    i32.reinterpret_f32
    i32.div_s
    f32.convert_i32_s
    local.get 0
    f64.nearest
    (f32.const 9.847249502983946e+17)
    f64.promote_f32
    f64.sqrt
    f64.nearest
    f64.add
    f64.nearest
    drop
    ;;INSPECT
    i32.reinterpret_f32
    f32.convert_i32_u
    f32.floor
    i32.trunc_f32_s
    local.set 3
)

)