(module
(type $sig_function_1561160830 (func))
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_3525907163 (mut i32) (i32.const 181020012))
(global $global_977511554 (mut funcref) (ref.null func))
(func $function_1561160830 (export "function_1561160830")
    (local i64 f32)
    (local $temp i32)
    i32.const 9
    loop $b_loop_2526372197 (param i32)
        (i32.const -80871952)
        nop
        i64.extend_i32_s
        i64.clz
        local.tee 0
        f32.convert_i64_s
        local.set 1
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_2526372197
        drop
    end
    (f64.const 2.9294364155940375e+80)
    f64.sqrt
    global.get $global_3525907163
    i64.extend_i32_s
    i64.extend16_s
    drop
    f64.trunc
    f32.demote_f64
    f32.abs
    local.set 1
    br 0
)
(func $run (export "run") (result i64)
    (local f64 i32 f32 funcref)
    (local $temp i32)
    i32.const 9
    loop $b_loop_4253235434 (param i32)
        i32.const 9
        loop $b_loop_2480836977 (param i32)
            (f64.const 3.979034227219669e-128)
            f64.abs
            i32.const 9
            loop $b_loop_1266319700 (param i32)
                (i32.const 183893324)
                i32.clz
                global.set $global_3525907163
                nop
                (i64.const 89)
                global.get $global_3525907163
                i32.popcnt
                drop
                i64.popcnt
                return
                i64.extend16_s
                f64.convert_i64_s
                local.set 0
                i32.const 1
                i32.sub
                local.tee $temp
                local.get $temp
                i32.const 0
                i32.gt_s
                br_if $b_loop_1266319700
                drop
            end
            f64.ceil
            nop
            f64.ceil
            global.get $global_3525907163
            (i64.const -807)
            i64.popcnt
            (f64.const 9.639085957473554e+158)
            f64.abs
            f64.neg
            f64.neg
            drop
            f64.reinterpret_i64
            i32.trunc_f64_s
            i32.shl
            i32.ctz
            global.set $global_3525907163
            f64.nearest
            i32.trunc_f64_u
            f64.convert_i32_s
            f64.floor
            f64.sqrt
            drop
            i32.const 1
            i32.sub
            local.tee $temp
            local.get $temp
            i32.const 0
            i32.gt_s
            br_if $b_loop_2480836977
            drop
        end
        (i32.const -9549319)
        local.set 1
        (f64.const 7.570953468829352e+92)
        (i64.const 8984910200907277005)
        f64.reinterpret_i64
        f64.gt
        i32.popcnt
        (f32.const -3.379048449616337e+34)
        local.set 2
        i32.extend8_s
        i64.extend_i32_u
        br 1
        call $function_1561160830
        f32.convert_i64_u
        f32.neg
        local.set 2
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_4253235434
        drop
    end
    ref.func $function_1561160830
    local.tee 3
    global.set $global_977511554
    local.get 0
    (f64.const 1.3126464621715874e-55)
    f64.le
    f32.convert_i32_u
    (f64.const 4.0668684970165695e-154)
    i32.trunc_f64_u
    i32.ctz
    nop
    i32.extend16_s
    f32.convert_i32_u
    f32.add
    f32.sqrt
    drop
    (i32.const 3518)
    global.set $global_3525907163
    (i64.const -487811119)
    return
)

)