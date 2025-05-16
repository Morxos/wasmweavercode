(module
(type $sig_function_3996273506 (func (param f64)))
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_3458038212 i64 (i64.const -7452734016094940730))
(global $global_3017254045 (mut i32) (i32.const 158074747))
(global $global_2956341211 (mut f64) (f64.const -4.693278042703872e+18))
(func $function_3996273506 (export "function_3996273506") (param f64)
    (local i64 f32)
    (local $temp i32)
    i32.const 9
    loop $b_loop_487258876 (param i32)
        i32.const 9
        loop $b_loop_4263664 (param i32)
            (f64.const 8.25746506133735e-191)
            global.set $global_2956341211
            (f32.const 27461654528.0)
            f32.floor
            i64.trunc_f32_s
            local.set 1
            global.get $global_3458038212
            i64.ctz
            f32.convert_i64_s
            f32.floor
            local.set 2
            i32.const 1
            i32.sub
            local.tee $temp
            local.get $temp
            i32.const 0
            i32.gt_s
            br_if $b_loop_4263664
            drop
        end
        local.get 0
        global.set $global_2956341211
        (f64.const 8.016488477593503e+256)
        drop
        br 1
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_487258876
        drop
    end
    global.get $global_3458038212
    f64.reinterpret_i64
    drop
    (i32.const 13157)
    br_if 0
    (i64.const -51922171)
    f64.reinterpret_i64
    i64.reinterpret_f64
    i64.clz
    f64.reinterpret_i64
    drop
    (i64.const 78955)
    f64.reinterpret_i64
    local.set 0
)
(func $run (export "run") (result f32)
    (local i32 i64 funcref)
    (local $temp i32)
    global.get $global_3458038212
    i64.popcnt
    f64.convert_i64_u
    i64.trunc_f64_s
    (i32.const 95470)
    global.set $global_3017254045
    i32.wrap_i64
    local.set 0
    (f64.const 6.114922683772473e+211)
    drop
    global.get $global_3458038212
    f64.convert_i64_u
    call $function_3996273506
    ref.func $function_3996273506
    (i64.const -820148)
    (i32.const -75850727)
    i64.extend_i32_u
    i64.rem_u
    local.set 1
    local.set 2
    (f32.const 2.9933321132154504e-24)
    nop
)

)