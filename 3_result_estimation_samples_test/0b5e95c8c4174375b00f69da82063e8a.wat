(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_2883724243 (mut f64) (f64.const -7.546013482421328e+18))
(global $global_1917151150 (mut i64) (i64.const -8185657496755841341))
(global $global_2085724768 (mut i32) (i32.const 1944424455))
(func $run (export "run") (result i32)
    (local f64)
    (local $temp i32)
    i32.const 9
    loop $b_loop_1061207500 (param i32)
        (i32.const -77898782)
        i64.extend_i32_u
        f64.convert_i64_u
        global.set $global_2883724243
        (i64.const 8373195832509724235)
        global.set $global_1917151150
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_1061207500
        drop
    end
    block
        local.get 0
        (i64.const 7560409)
        f64.convert_i64_s
        i64.trunc_f64_u
        f64.convert_i64_s
        f64.eq
        global.set $global_2085724768
    end

    (i32.const 541617)
    i32.popcnt
    i32.popcnt
    i32.extend8_s
)

)