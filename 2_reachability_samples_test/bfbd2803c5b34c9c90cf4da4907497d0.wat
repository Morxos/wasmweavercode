(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3705696299 f32 (f32.const -2.35558975997739e+17))
(global $global_2264620087 (mut i64) (i64.const 1059894520730354534))
(func $run (export "run")
    (local i64 i64)
    (local $temp i32)
    ;;FLAG_0
    global.get $global_3705696299
    f32.trunc
    global.get $global_3705696299
    f32.eq
    i32.clz
    f32.reinterpret_i32
    i32.reinterpret_f32
    (br_table 0)
    ;;FLAG_1
    (i32.const -88743014)
    i32.eqz
    (br_table 0)
    ;;FLAG_2
    local.get 0
    global.set $global_2264620087
    (f64.const 1.0924483384169154e+178)
    f64.abs
    nop
    f64.sqrt
    i64.reinterpret_f64
    local.tee 1
    i64.extend16_s
    i64.extend8_s
    i64.extend8_s
    f32.convert_i64_u
    nop
    global.get $global_3705696299
    f32.le
    (br_table 0)
    ;;FLAG_3
)

)