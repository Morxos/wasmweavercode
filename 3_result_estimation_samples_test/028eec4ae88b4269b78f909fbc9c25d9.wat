(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_2976873744 (mut f64) (f64.const -1.0916531508519834e+18))
(func $run (export "run") (result i64)
    (local f64 i32 f32 f64)
    (local $temp i32)
    (i32.const 297711854)
    if
        (f32.const 5.61485317698625e-23)
        i64.trunc_f32_s
        drop
        (i64.const 83)
        drop
    else
        (f32.const 1.3073086737793787e-24)
        f32.floor
        i32.reinterpret_f32
        nop
        f32.convert_i32_s
        local.get 0
        global.set $global_2976873744
        f64.promote_f32
        i32.trunc_f64_s
        (i64.const -3341370)
        i64.extend32_s
        i64.extend8_s
        global.get $global_2976873744
        global.set $global_2976873744
        f64.convert_i64_u
        local.set 0
        local.tee 1
        drop
        i32.const 9
        loop $b_loop_2857629627 (param i32)
            local.get 0
            f32.demote_f64
            local.set 2
            global.get $global_2976873744
            (f64.const 2.416808174217229e-228)
            f64.ge
            i32.extend8_s
            local.set 1
            br 1
            i32.const 1
            i32.sub
            local.tee $temp
            local.get $temp
            i32.const 0
            i32.gt_s
            br_if $b_loop_2857629627
            drop
        end
    end

    global.get $global_2976873744
    i64.reinterpret_f64
    (f64.const 7.0607432816629e-147)
    f64.trunc
    global.get $global_2976873744
    f64.neg
    drop
    local.tee 3
    drop
)

)