(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_1356924943 (mut i32) (i32.const -949898404))
(func $run (export "run") (result f64)
    (local i32)
    (local $temp i32)
    i32.const 9
    loop $b_loop_1341251732 (param i32)
        (i32.const -24)
        i32.extend8_s
        i64.extend_i32_u
        f64.convert_i64_u
        drop
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_1341251732
        drop
    end
    (i32.const 62974)
    (f64.const 1.0058664818346944e+257)
    f64.trunc
    f64.floor
    nop
    drop
    local.set 0
    i32.const 9
    loop $b_loop_540121609 (param i32)
        (i32.const -14327)
        local.get 0
        i32.shl
        nop
        global.set $global_1356924943
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_540121609
        drop
    end
    (f64.const 1.7596593074069142e-41)
)

)