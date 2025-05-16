(module
(type $sig_function_185702217 (func (param i32)))
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_485180317 (mut f32) (f32.const -5.216527364866966e+18))
(global $global_1593625063 (mut f64) (f64.const -6.0161204345618e+18))
(func $function_185702217 (export "function_185702217") (param i32)
    (local i64)
    (local $temp i32)
    ;;FLAG_0
    local.get 0
    f64.convert_i32_u
    i64.reinterpret_f64
    f64.convert_i64_u
    f64.sqrt
    i64.trunc_f64_s
    local.tee 1
    f32.convert_i64_u
    f64.promote_f32
    f64.floor
    global.set $global_1593625063
    (f32.const 0.0022702226415276527)
    global.set $global_485180317
)
(func $run (export "run")
    (local f32)
    (local $temp i32)
    ;;FLAG_1
    global.get $global_485180317
    local.tee 0
    f64.promote_f32
    i64.trunc_f64_s
    drop
    block
        block
            ;;FLAG_4
            (i32.const -9407)
            drop
            (f32.const -6671357440.0)
            i32.reinterpret_f32
            call $function_185702217
        end

        ;;FLAG_3
        (i32.const 845261277)
        local.get 0
        drop
        call $function_185702217
        br 0
    end

    ;;FLAG_2
    nop
)

)