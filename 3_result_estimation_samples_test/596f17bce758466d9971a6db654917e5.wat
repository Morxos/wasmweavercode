(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_1441619797 (mut f32) (f32.const -7.507626472907997e+18))
(func $run (export "run") (result i64)
    (local f32)
    (local $temp i32)
    global.get $global_1441619797
    (i32.const -81457630)
    drop
    i32.const 9
    loop $b_loop_1994965141 (param i32)
        (f64.const 3.799943307892702e-66)
        f64.ceil
        nop
        f64.sqrt
        i32.trunc_f64_s
        block (param i32)
            i32.clz
            drop
            (i32.const -6969852)
            i32.eqz
            f64.convert_i32_s
            (i32.const 1399307)
            f64.convert_i32_u
            f64.lt
            br_if 0
        end

        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_1994965141
        drop
    end
    f32.abs
    local.set 0
    local.get 0
    f32.floor
    i64.trunc_f32_s
)

)