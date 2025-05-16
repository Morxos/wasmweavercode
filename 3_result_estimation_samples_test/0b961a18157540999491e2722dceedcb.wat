(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_4179272778 (mut f64) (f64.const -5.068258391201477e+18))
(global $global_2193133125 (mut f32) (f32.const 1.645875448292311e+18))
(global $global_2424785320 (mut i64) (i64.const 7390978241771724818))
(global $global_4155396264 (mut i32) (i32.const -978229881))
(func $run (export "run") (result i32)
    (local f64 i32 i64)
    (local $temp i32)
    block
        (i64.const -90329498)
        global.get $global_4179272778
        local.get 0
        f64.le
        loop $loop_4019626244 (param i32)    (f32.const 1756496256.0)
            global.set $global_2193133125
            (f32.const -5.0784451163758764e-24)
            f32.abs
            f32.abs
            (i32.const 37105714)
            f32.convert_i32_s
            i32.trunc_f32_s
            local.set 1
            i64.trunc_f32_u
            local.tee 2
            global.set $global_2424785320
            (f64.const 1.705326017488824e+177)
            drop
            i32.const 1
            i32.sub
            local.tee $temp
            local.get $temp
            i32.const 0
            i32.gt_s
            br_if $loop_4019626244
            drop
        end
        f32.convert_i64_u
        global.set $global_2193133125
        br 0
    end

    (i64.const 4804)
    i32.wrap_i64
    global.set $global_4155396264
    nop
    (i32.const 5918406)
)

)