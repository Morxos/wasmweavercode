(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2112812539 (mut f64) (f64.const 4.064079463323814e+18))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    local.get 0
    f64.convert_i64_s
    f32.demote_f64
    (f32.const 4.32939888806832e+27)
    f32.lt
    i32.extend8_s
    i32.clz
    i32.ctz
    f64.convert_i32_s
    f64.trunc
    i64.trunc_f64_u
    f64.reinterpret_i64
    f64.sqrt
    f32.demote_f64
    f32.trunc
    f32.sqrt
    f32.neg
    local.get 0
    i64.extend32_s
    (f32.const 141.64266967773438)
    f64.promote_f32
    drop
    i64.extend16_s
    ;;INSPECT
    f64.reinterpret_i64
    f32.demote_f64
    f32.add
    drop
    global.get $global_2112812539
    f64.sqrt
    global.set $global_2112812539
)

)