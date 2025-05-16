(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_555754054 (mut i64) (i64.const 1181381905402218346))
(global $global_4266065838 (mut i32) (i32.const -1656622508))
(func $run (export "run")
    (local f64 i64)
    (local $temp i32)
    local.get 0
    i64.trunc_f64_s
    i64.ctz
    (i64.const 228153)
    i64.sub
    i64.extend32_s
    i64.extend32_s
    i64.extend32_s
    f64.convert_i64_s
    f64.abs
    f64.floor
    i64.reinterpret_f64
    local.tee 1
    i32.wrap_i64
    i32.clz
    ;;INSPECT
    i32.clz
    f32.reinterpret_i32
    f32.sqrt
    (f32.const -1.0736059094094487e+24)
    f32.gt
    i32.clz
    i32.clz
    f32.convert_i32_u
    local.get 0
    i64.reinterpret_f64
    i64.popcnt
    i64.popcnt
    i64.popcnt
    global.set $global_555754054
    i32.reinterpret_f32
    global.set $global_4266065838
)

)