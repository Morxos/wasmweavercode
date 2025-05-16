(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_274076714 (mut f64) (f64.const -6.9777210356195e+18))
(global $global_865269171 (mut i32) (i32.const 1836574833))
(func $run (export "run") (result i32)
    (local f32 i64)
    (local $temp i32)
    i32.const 9
    loop $b_loop_1678427976 (param i32)
        (i32.const 5554282)
        i32.clz
        f64.convert_i32_u
        f64.nearest
        global.set $global_274076714
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_1678427976
        drop
    end
    (i64.const 6412925)
    drop
    local.get 0
    global.get $global_274076714
    drop
    i32.trunc_f32_u
    i64.extend_i32_u
    (i32.const 609)
    global.set $global_865269171
    i64.popcnt
    i64.ctz
    local.set 1
    global.get $global_274076714
    nop
    f64.ceil
    i32.trunc_f64_u
    global.set $global_865269171
    (i32.const -5409)
)

)