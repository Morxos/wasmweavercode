(module
(type $sig_function_1149758062 (func (param f64)))
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_2578172865 (mut i32) (i32.const -1925444473))
(global $global_4005988754 (mut f64) (f64.const -3.860986864386906e+18))
(global $global_4035183291 (mut i64) (i64.const -1140231777230888753))
(global $global_1990268077 (mut f32) (f32.const -9.221500118308487e+18))
(func $function_1149758062 (export "function_1149758062") (param f64)
    (local f32)
    (local $temp i32)
    i32.const 9
    loop $b_loop_4127284094 (param i32)
        i32.const 9
        loop $b_loop_273218810 (param i32)
            (i32.const -2024235585)
            i64.extend_i32_s
            i64.extend8_s
            i64.extend16_s
            i64.extend8_s
            f32.convert_i64_s
            local.set 1
            (f64.const 1.1763345178849057e-07)
            i64.trunc_f64_s
            f32.convert_i64_u
            drop
            nop
            return
            i32.const 1
            i32.sub
            local.tee $temp
            local.get $temp
            i32.const 0
            i32.gt_s
            br_if $b_loop_273218810
            drop
        end
        (f64.const 2.4010273407934268e-262)
        block (param f64)
            global.get $global_2578172865
            i32.extend8_s
            i32.popcnt
            f64.convert_i32_u
            f64.sub
            global.set $global_4005988754
            return
        end

        global.get $global_2578172865
        i32.ctz
        if
            nop
            nop
            (i64.const 7592927)
            global.set $global_4035183291
            local.get 0
            local.set 0
        else
            (f32.const -7.694141331004989e-12)
            f32.neg
            f32.abs
            f32.ceil
            (i64.const -227107078)
            i64.extend8_s
            local.get 0
            global.set $global_4005988754
            f32.convert_i64_s
            local.set 1
            local.set 1
        end

        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_4127284094
        drop
    end
    global.get $global_2578172865
    global.set $global_2578172865
    local.get 0
    (f64.const 3.2859450643680246e-137)
    f64.nearest
    f64.sqrt
    f64.sqrt
    i32.trunc_f64_u
    f32.convert_i32_s
    global.set $global_1990268077
    global.set $global_4005988754
)
(func $run (export "run") (result f32)
    (local i64)
    (local $temp i32)
    (i64.const 1257882)
    local.get 0
    i64.gt_s
    i64.extend_i32_s
    f64.reinterpret_i64
    call $function_1149758062
    (f32.const 45414.6796875)
    br 0
)

)