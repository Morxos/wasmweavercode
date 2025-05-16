(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_1400816688 (mut f32) (f32.const 3.541699576392057e+18))
(func $run (export "run") (result i64)
    (local $temp i32)
    i32.const 9
    loop $b_loop_4114938174 (param i32)
        (f64.const 1.2567506402516666e-27)
        nop
        i64.trunc_f64_u
        i32.wrap_i64
        i32.eqz
        i32.ctz
        f32.convert_i32_u
        (f32.const 887838459559936.0)
        f32.neg
        f32.min
        global.set $global_1400816688
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_4114938174
        drop
    end
    nop
    nop
    (i64.const 376868729)
    (f32.const 1.038945418655357e+27)
    f32.nearest
    f32.ceil
    global.set $global_1400816688
    br 0
)

)