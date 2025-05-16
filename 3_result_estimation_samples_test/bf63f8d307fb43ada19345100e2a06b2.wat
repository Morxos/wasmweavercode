(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_4119492034 (mut f64) (f64.const 3.7223120061572424e+18))
(func $run (export "run") (result f64)
    (local i64 f64 f64 i32)
    (local $temp i32)
    i32.const 9
    loop $b_loop_1585927723 (param i32)
        block
            i32.const 9
            loop $b_loop_757948823 (param i32)
                (f64.const 7.344849230706714e-203)
                i32.trunc_f64_u
                i32.extend8_s
                i32.clz
                i32.eqz
                i32.extend16_s
                drop
                i32.const 1
                i32.sub
                local.tee $temp
                local.get $temp
                i32.const 0
                i32.gt_s
                br_if $b_loop_757948823
                drop
            end
            (i64.const 38844713)
            local.tee 0
            f64.reinterpret_i64
            (i32.const 35432034)
            br_if 2
            local.tee 1
            f64.floor
            f64.neg
            i32.trunc_f64_s
            br_if 0
        end

        global.get $global_4119492034
        local.tee 2
        (i32.const 3070)
        drop
        local.set 1
        (i32.const -882)
        local.set 3
        local.get 0
        f64.reinterpret_i64
        f64.sqrt
        f64.floor
        f64.trunc
        drop
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_1585927723
        drop
    end
    (f64.const 5.4604933428578794e-285)
    global.set $global_4119492034
    nop
    nop
    global.get $global_4119492034
    f64.sqrt
)

)