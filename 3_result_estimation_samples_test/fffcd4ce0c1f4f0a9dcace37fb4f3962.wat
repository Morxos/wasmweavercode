(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_20094596 (mut i64) (i64.const -2050242793800093650))
(global $global_295625448 (mut f32) (f32.const 7.99932752309361e+18))
(func $run (export "run") (result f32)
    (local f32 i64 f64 i32)
    (local $temp i32)
    i32.const 9
    loop $b_loop_1367633270 (param i32)
        (f64.const 6.525926829942932e-300)
        (f32.const 6.115165606966429e+20)
        local.set 0
        global.get $global_20094596
        nop
        local.set 1
        local.set 2
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_1367633270
        drop
    end
    (f64.const 5.689436877937188e-259)
    f64.sqrt
    f32.demote_f64
    i32.const 9
    loop $b_loop_788755741 (param i32)
        global.get $global_20094596
        i32.const 9
        loop $b_loop_2663767797 (param i32)
            (f64.const 4.13445224799571e+51)
            f64.floor
            f64.floor
            i64.reinterpret_f64
            drop
            i32.const 9
            loop $b_loop_3850369792 (param i32)
                nop
                nop
                local.get 0
                local.get 0
                nop
                drop
                f32.sqrt
                return
                local.get 0
                global.set $global_295625448
                return
                i64.trunc_f32_u
                i64.eqz
                f64.convert_i32_s
                i32.trunc_f64_s
                local.set 3
                nop
                i32.const 1
                i32.sub
                local.tee $temp
                local.get $temp
                i32.const 0
                i32.gt_s
                br_if $b_loop_3850369792
                drop
            end
            i32.const 1
            i32.sub
            local.tee $temp
            local.get $temp
            i32.const 0
            i32.gt_s
            br_if $b_loop_2663767797
            drop
        end
        global.get $global_20094596
        i64.le_s
        local.set 3
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_788755741
        drop
    end
)

)