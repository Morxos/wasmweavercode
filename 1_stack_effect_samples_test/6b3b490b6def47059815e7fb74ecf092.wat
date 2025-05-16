(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2186133638 (mut i64) (i64.const -7455889663907355925))
(global $global_3367158515 (mut i32) (i32.const 558141265))
(func $run (export "run")
    (local i64 i32 f64)
    (local $temp i32)
    local.get 0
    i64.extend32_s
    f64.convert_i64_s
    f64.trunc
    f64.trunc
    f64.nearest
    f32.demote_f64
    i64.trunc_f32_u
    i64.eqz
    f32.convert_i32_u
    i64.trunc_f32_u
    i64.eqz
    ;;INSPECT
    local.tee 1
    i64.extend_i32_s
    global.set $global_2186133638
    global.get $global_2186133638
    i64.eqz
    i64.extend_i32_s
    f64.convert_i64_s
    f64.sqrt
    f64.trunc
    i64.trunc_f64_s
    f64.reinterpret_i64
    f64.sqrt
    local.tee 2
    f64.trunc
    f32.demote_f64
    i32.reinterpret_f32
    i32.clz
    global.set $global_3367158515
)

)