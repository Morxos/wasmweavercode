(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_4180157609 (mut i32) (i32.const 1101777068))
(func $run (export "run")
    (local f64 f32 i32)
    (local $temp i32)
    local.get 0
    i64.trunc_f64_u
    i64.ctz
    i64.popcnt
    i64.extend32_s
    f64.convert_i64_s
    f32.demote_f64
    f32.ceil
    i64.trunc_f32_s
    f64.convert_i64_u
    f64.trunc
    f64.trunc
    ;;INSPECT
    f64.sqrt
    f64.neg
    f64.trunc
    f64.nearest
    f64.nearest
    f64.neg
    f32.demote_f64
    local.tee 1
    i32.reinterpret_f32
    nop
    local.tee 2
    global.set $global_4180157609
)

)