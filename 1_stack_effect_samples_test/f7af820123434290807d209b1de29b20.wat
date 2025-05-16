(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_4012807125 (mut i32) (i32.const -710235671))
(func $run (export "run")
    (local f64 f64 i32)
    (local $temp i32)
    local.get 0
    f64.trunc
    local.tee 1
    f64.nearest
    f64.trunc
    f64.trunc
    f64.nearest
    i64.trunc_f64_s
    i64.extend32_s
    f64.reinterpret_i64
    f64.trunc
    f64.trunc
    f32.demote_f64
    i64.trunc_f32_u
    i64.eqz
    f32.convert_i32_s
    i64.trunc_f32_u
    i64.clz
    f32.convert_i64_s
    i32.reinterpret_f32
    (i64.const -39)
    f64.convert_i64_s
    ;;INSPECT
    f64.nearest
    local.set 0
    local.tee 2
    global.set $global_4012807125
)

)