(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_80801080 (mut f32) (f32.const -7.074694319227011e+18))
(global $global_3645571949 (mut i64) (i64.const 515238127372871477))
(global $global_789847426 (mut i32) (i32.const -1020993892))
(func $run (export "run") (result f32)
    (local i32 f32)
    (local $temp i32)
    (i32.const 50)
    local.set 0
    nop
    (f64.const 4.038933006683196e-202)
    drop
    global.get $global_80801080
    (f32.const -4039615971328.0)
    f32.sub
    (i32.const -31185)
    if
        (i32.const 305013797)
        local.get 0
        i32.rotl
        i32.clz
        global.get $global_80801080
        f32.ceil
        drop
        i64.extend_i32_u
        i32.wrap_i64
        f32.convert_i32_s
        i32.trunc_f32_u
        br_if 0
        (i64.const 3591)
        i64.ctz
        f32.convert_i64_u
        (i64.const 3940815)
        block (param i64)
            i64.extend32_s
            global.set $global_3645571949
            local.get 0
            i32.popcnt
            drop
            br 0
            (f32.const -0.007624736987054348)
            i64.trunc_f32_s
            i64.extend16_s
            i64.extend16_s
            f64.reinterpret_i64
            i64.reinterpret_f64
            i32.wrap_i64
            i32.const 9
            loop $b_loop_274295678 (param i32)
                (i32.const -69614)
                global.set $global_789847426
                (f32.const -5.459401736372786e-21)
                global.set $global_80801080
                (f32.const 3.2316257760508203e-16)
                (f32.const 1.3043888345326074e-31)
                i32.reinterpret_f32
                f32.convert_i32_u
                nop
                f32.sqrt
                f32.eq
                local.set 0
                i32.const 1
                i32.sub
                local.tee $temp
                local.get $temp
                i32.const 0
                i32.gt_s
                br_if $b_loop_274295678
                drop
            end
            i32.eqz
            drop
            br 0
        end

        local.get 0
        local.set 0
        i32.trunc_f32_s
        (i32.const -1695408041)
        i32.shl
        br_if 0
        (f64.const 1.3356723856114532e-160)
        i32.trunc_f64_s
        (f32.const 5.289824517139144e-16)
        local.tee 1
        global.set $global_80801080
        br_if 0
    else
        (i32.const 83296)
        i64.extend_i32_s
        i64.eqz
        local.set 0
        (i64.const -8654732)
        f64.convert_i64_s
        drop
        nop
        (i32.const -783802)
        i32.popcnt
        br_if 0
    end

    global.set $global_80801080
    (f64.const 1.7496660439664897e-94)
    i64.trunc_f64_s
    drop
    global.get $global_80801080
    (i64.const 352436511)
    i32.wrap_i64
    local.set 0
    drop
    global.get $global_80801080
)

)