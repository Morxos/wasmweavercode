(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3182262209 (mut i64) (i64.const 6783384178361441695))
(global $global_3898656754 (mut i32) (i32.const -1240550457))
(func $run (export "run")
    (local i32 i64 f32)
    (local $temp i32)
    ;;FLAG_0
    global.get $global_3182262209
    i64.clz
    f32.convert_i64_s
    (i64.const 0)
    f64.convert_i64_u
    i64.reinterpret_f64
    i32.wrap_i64
    i32.clz
    local.tee 0
    global.get $global_3182262209
    local.tee 1
    f32.convert_i64_s
    i32.reinterpret_f32
    i32.lt_u
    i32.eqz
    global.set $global_3898656754
    f32.neg
    local.set 2
    br 0
)

)