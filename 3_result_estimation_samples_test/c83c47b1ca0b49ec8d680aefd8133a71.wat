(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_1935480535 (mut f64) (f64.const -2.7837257187221094e+17))
(global $global_2291372380 (mut i64) (i64.const 4768221317615930214))
(global $global_4101041725 (mut i32) (i32.const -1892648463))
(func $run (export "run") (result f64)
    (local i32)
    (local $temp i32)
    (i32.const -163115)
    global.get $global_1935480535
    (f64.const 2.0260435583006344e+274)
    f64.sqrt
    f64.min
    f64.neg
    global.set $global_1935480535
    local.tee 0
    f32.convert_i32_u
    drop
    block
        i32.const 9
        loop $b_loop_46746972 (param i32)
            (i32.const -355802195)
            nop
            f32.reinterpret_i32
            drop
            local.get 0
            br_if 1
            i32.const 1
            i32.sub
            local.tee $temp
            local.get $temp
            i32.const 0
            i32.gt_s
            br_if $b_loop_46746972
            drop
        end
        (i64.const -159983993)
        global.set $global_2291372380
        (i64.const 808)
        i64.extend32_s
        i64.ctz
        global.set $global_2291372380
    end

    local.get 0
    global.set $global_4101041725
    (i32.const 36505)
    f64.convert_i32_u
)

)