(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_198434962 (mut i64) (i64.const -173387811830678989))
(global $global_202862661 (mut f32) (f32.const -2.07645478452881e+18))
(func $run (export "run")
    (local i64 f32 f64)
    (local $temp i32)
    local.get 0
    local.get 0
    i64.eqz
    f32.reinterpret_i32
    global.get $global_198434962
    i64.clz
    i64.ctz
    i64.ctz
    i64.ctz
    i64.ctz
    f64.reinterpret_i64
    i64.trunc_f64_u
    i64.clz
    (f32.const -872782976.0)
    f32.neg
    global.set $global_202862661
    i64.clz
    f64.convert_i64_s
    i64.reinterpret_f64
    ;;INSPECT
    global.set $global_198434962
    local.set 1
    i32.wrap_i64
    f32.convert_i32_u
    f64.promote_f32
    local.set 2
)

)