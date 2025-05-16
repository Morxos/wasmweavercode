(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1943803935 (mut i32) (i32.const -1601987853))
(global $global_3311797382 (mut f32) (f32.const 8.863259438769766e+18))
(func $run (export "run")
    (local i64 f32 f64)
    (local $temp i32)
    (i32.const -908346)
    i32.eqz
    global.get $global_1943803935
    i32.div_u
    f64.convert_i32_s
    i64.trunc_f64_s
    f64.convert_i64_s
    f64.floor
    f32.demote_f64
    f32.neg
    i32.trunc_f32_s
    f64.convert_i32_s
    local.get 0
    i64.eqz
    i32.extend16_s
    f64.convert_i32_s
    i64.trunc_f64_u
    f32.convert_i64_u
    local.tee 1
    f32.neg
    f32.abs
    global.set $global_3311797382
    f64.sqrt
    f32.demote_f64
    f32.neg
    i32.trunc_f32_s
    i32.clz
    i32.extend16_s
    i64.extend_i32_s
    i64.eqz
    i32.extend16_s
    i32.extend8_s
    ;;INSPECT
    i64.extend_i32_s
    i64.extend32_s
    i64.popcnt
    f64.convert_i64_s
    local.set 2
)

)