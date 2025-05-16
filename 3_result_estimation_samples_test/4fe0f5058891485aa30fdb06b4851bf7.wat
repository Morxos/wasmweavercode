(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_1781368785 (mut i64) (i64.const 3176591198247494325))
(func $run (export "run") (result f64)
    (local i32 f64)
    (local $temp i32)
    block
        (f64.const 7.132180960775002e-160)
        local.get 0
        f32.reinterpret_i32
        block (param f32) (result f64)
            i32.const 9
            loop $b_loop_2698728009 (param i32)
                (i32.const 21)
                f64.convert_i32_s
                i32.trunc_f64_s
                i64.extend_i32_u
                global.set $global_1781368785
                i32.const 1
                i32.sub
                local.tee $temp
                local.get $temp
                i32.const 0
                i32.gt_s
                br_if $b_loop_2698728009
                drop
            end
            f32.floor
            i64.trunc_f32_u
            f64.reinterpret_i64
            f64.sqrt
            br 0
        end

        f64.le
        f64.convert_i32_u
        local.set 1
    end

    nop
    (f64.const 1.406293173519039e-131)
    nop
    i64.trunc_f64_u
    i64.eqz
    i64.extend_i32_u
    drop
    (f64.const 1.6603516843766388e-211)
)

)