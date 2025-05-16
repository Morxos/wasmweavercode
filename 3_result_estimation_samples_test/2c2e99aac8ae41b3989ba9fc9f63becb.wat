(module
(type $sig_function_3898220983 (func (param i64)))
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_1106113605 (mut i32) (i32.const 148371475))
(func $function_3898220983 (export "function_3898220983") (param i64)
    (local f32)
    (local $temp i32)
    (f64.const 4.1984817790958153e-287)
    i32.trunc_f64_u
    f64.convert_i32_s
    (i64.const -377)
    i64.ctz
    f32.convert_i64_u
    f32.ceil
    i64.trunc_f32_s
    (f32.const 3.7932310067413475e-25)
    local.set 1
    local.set 0
    drop
)
(func $run (export "run") (result i32)
    (local i32 f32 f64)
    (local $temp i32)
    block
        i32.const 9
        loop $b_loop_1545594180 (param i32)
            i32.const 9
            loop $b_loop_2529664463 (param i32)
                (i64.const 0)
                drop
                global.get $global_1106113605
                local.set 0
                local.get 0
                i32.popcnt
                br_if 2
                global.get $global_1106113605
                i32.popcnt
                br_if 2
                i32.const 1
                i32.sub
                local.tee $temp
                local.get $temp
                i32.const 0
                i32.gt_s
                br_if $b_loop_2529664463
                drop
            end
            local.get 0
            f32.convert_i32_u
            local.set 1
            (i64.const -995)
            f64.reinterpret_i64
            local.set 2
            i32.const 1
            i32.sub
            local.tee $temp
            local.get $temp
            i32.const 0
            i32.gt_s
            br_if $b_loop_1545594180
            drop
        end
        global.get $global_1106113605
        i32.extend8_s
        global.set $global_1106113605
        (i64.const -296460)
        i64.extend16_s
        i64.popcnt
        i64.extend8_s
        i64.clz
        call $function_3898220983
    end

    (i32.const -74929668)
    i32.popcnt
    i32.popcnt
    local.get 0
    i32.shl
    return
)

)