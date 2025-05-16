(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1786137730 (mut i64) (i64.const 1894320161167609977))
(global $global_524732827 (mut i32) (i32.const -1059448263))
(func $run (export "run")
    (local i64 f64 f32)
    (local $temp i32)
    local.get 0
    global.set $global_1786137730
    ;;INSPECT
    local.get 0
    i64.extend32_s
    f64.convert_i64_s
    f64.sqrt
    i64.trunc_f64_u
    i64.extend32_s
    i64.eqz
    i64.extend_i32_s
    f64.convert_i64_u
    f64.sqrt
    i64.trunc_f64_u
    i64.eqz
    f32.convert_i32_s
    nop
    f32.ceil
    i64.trunc_f32_u
    i64.ctz
    f32.convert_i64_s
    f64.promote_f32
    local.tee 1
    i32.trunc_f64_u
    i32.clz
    i32.extend16_s
    i32.extend16_s
    f32.convert_i32_s
    local.tee 2
    i32.reinterpret_f32
    global.set $global_524732827
)

)