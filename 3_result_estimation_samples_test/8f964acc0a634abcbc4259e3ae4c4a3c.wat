(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_3473128774 (mut f64) (f64.const -2.0110343988783555e+18))
(global $global_954919871 (mut f32) (f32.const 5.240039321515327e+18))
(global $global_562524425 (mut i32) (i32.const 753020583))
(func $run (export "run") (result i64)
    (local f32 f64 i64 i32)
    (local $temp i32)
    block
        (i64.const -366215)
        nop
        f32.convert_i64_s
        local.set 0
        (f64.const 1.1788440557034887e+269)
        nop
        drop
        block
            i32.const 9
            loop $b_loop_273147343 (param i32)
                nop
                global.get $global_3473128774
                local.set 1
                local.get 0
                f32.trunc
                drop
                i32.const 1
                i32.sub
                local.tee $temp
                local.get $temp
                i32.const 0
                i32.gt_s
                br_if $b_loop_273147343
                drop
            end
            (f64.const 52182704923.20529)
            f64.abs
            (f32.const 9.827933763369699e-16)
            f32.trunc
            global.set $global_954919871
            global.set $global_3473128774
            (i64.const -3)
            local.set 2
            (i64.const 55691537)
            i64.eqz
            local.tee 3
            i32.ctz
            i64.extend_i32_u
            local.set 2
        end

    end

    (f64.const 2.4345868518042476e-294)
    f64.nearest
    nop
    f32.demote_f64
    i32.reinterpret_f32
    local.get 0
    i64.trunc_f32_s
    i64.eqz
    i32.rotl
    (i32.const -361287807)
    i32.shl
    nop
    (i32.const 33480)
    i32.rem_s
    f32.convert_i32_s
    (f64.const 4.7612794031335726e-225)
    (i32.const 1)
    i32.extend8_s
    i32.extend16_s
    i32.extend8_s
    global.set $global_562524425
    global.set $global_3473128774
    i64.trunc_f32_s
    return
)

)