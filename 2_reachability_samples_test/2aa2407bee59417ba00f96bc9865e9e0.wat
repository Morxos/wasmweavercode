(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3069042381 (mut f64) (f64.const -2.706213405059291e+18))
(global $global_1107728312 (mut f32) (f32.const 2.6271568656114647e+18))
(func $run (export "run")
    (local f64)
    (local $temp i32)
    ;;FLAG_0
    global.get $global_3069042381
    f32.demote_f64
    (i64.const 723630)
    i32.wrap_i64
    i32.popcnt
    global.get $global_3069042381
    f64.ceil
    local.tee 0
    f64.ceil
    f64.trunc
    local.set 0
    i32.popcnt
    i32.popcnt
    i32.popcnt
    i32.clz
    f32.convert_i32_u
    f32.lt
    (br_table 0)
    ;;FLAG_1
    nop
    (f32.const 13824.9853515625)
    global.set $global_1107728312
)

)