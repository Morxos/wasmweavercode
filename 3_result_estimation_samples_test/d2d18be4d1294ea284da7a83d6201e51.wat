(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_184607253 (mut f32) (f32.const -6.169215157672083e+18))
(global $global_1510840003 (mut f64) (f64.const 6.58960620359635e+17))
(func $run (export "run") (result i32)
    (local f64 f32 i64)
    (local $temp i32)
    block
        (f64.const 9.77693497016345e+187)
        i64.reinterpret_f64
        block (param i64) (result i64)
            drop
            (i64.const -146)
            f32.convert_i64_u
            global.set $global_184607253
            local.get 0
            i32.trunc_f64_u
            br_if 1
            i32.const 9
            loop $b_loop_1472396817 (param i32)
                nop
                (f64.const 6.14208705127128e+29)
                f64.sqrt
                drop
                (i32.const -5)
                br_if 2
                i32.const 1
                i32.sub
                local.tee $temp
                local.get $temp
                i32.const 0
                i32.gt_s
                br_if $b_loop_1472396817
                drop
            end
            (i32.const 1143833)
            drop
            (f32.const 4651546112.0)
            f32.floor
            local.set 1
            (f32.const -3.0983727118747887e-30)
            i64.trunc_f32_s
        end

        local.set 2
        global.get $global_184607253
        f32.abs
        drop
    end

    (f64.const 5.092636209578097e-42)
    i64.reinterpret_f64
    i64.clz
    (f64.const 4.456297949225975e-64)
    global.set $global_1510840003
    i64.eqz
)

)