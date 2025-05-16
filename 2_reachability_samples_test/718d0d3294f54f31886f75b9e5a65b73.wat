(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3000348784 (mut i64) (i64.const 6516190562866912598))
(func $run (export "run")
    (local i64 f32)
    (local $temp i32)
    ;;FLAG_0
    (f32.const -1.693216069826779e-18)
    global.get $global_3000348784
    i64.clz
    i64.popcnt
    (i64.const 6)
    i64.div_u
    local.tee 0
    f64.reinterpret_i64
    f64.neg
    i32.trunc_f64_u
    (i32.const 1)
    i32.rem_u
    i32.clz
    i32.clz
    global.get $global_3000348784
    f32.convert_i64_s
    local.set 1
    f32.convert_i32_s
    i32.trunc_f32_u
    f32.reinterpret_i32
    f32.ne
    f32.reinterpret_i32
    f32.neg
    i32.reinterpret_f32
    i32.ctz
    (br_table 0)
    ;;FLAG_1
)

)