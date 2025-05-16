(module
(type $sig_function_1125409579 (func))
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(table $tab_486372255 3 funcref)
(global $global_595851296 (mut i32) (i32.const 506308808))
(global $global_2481696247 (mut f32) (f32.const -2.1187928541458596e+18))
(func $function_1125409579 (export "function_1125409579")
    (local i32)
    (local $temp i32)
    local.get 0
    f32.reinterpret_i32
    f32.sqrt
    i32.trunc_f32_s
    i32.clz
    br_if 0
)
(func $run (export "run") (result i32)
    (local i64 f64 i32 f32 i32)
    (local $temp i32)
    i32.const 9
    loop $b_loop_3375994889 (param i32)
        i32.const 9
        loop $b_loop_3541237568 (param i32)
            nop
            local.get 0
            (i64.const -454104)
            i64.div_s
            f64.reinterpret_i64
            i32.trunc_f64_s
            f64.convert_i32_u
            f64.nearest
            f64.floor
            local.set 1
            (i32.const -37983)
            i32.clz
            global.set $global_595851296
            (i32.const 0)
            drop
            nop
            block
                nop
                (i32.const 1825105321)
                local.set 2
                (f32.const -7207.5224609375)
                local.set 3
                (f32.const 7.916125041042654e-38)
                f32.neg
                i32.reinterpret_f32
                local.tee 4
                br 3
                f32.convert_i32_s
                local.set 3
                (f32.const -29655.146484375)
                global.set $global_2481696247
            end

            (f32.const -3.2845553074628353e+25)
            i32.reinterpret_f32
            f32.convert_i32_u
            f32.abs
            (i32.const -7560)
            (f32.const 4.064224308395724e-21)
            f64.promote_f32
            i64.reinterpret_f64
            f64.convert_i64_u
            f64.sqrt
            f64.floor
            call $function_1125409579
            (f64.const 3.5167120766914774e-18)
            f64.copysign
            local.set 1
            f32.convert_i32_s
            f32.eq
            call $function_1125409579
            nop
            drop
            nop
            i32.const 1
            i32.sub
            local.tee $temp
            local.get $temp
            i32.const 0
            i32.gt_s
            br_if $b_loop_3541237568
            drop
        end
        (f32.const 0.0018002898432314396)
        f32.sqrt
        f64.promote_f32
        f64.trunc
        i64.trunc_f64_s
        local.set 0
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_3375994889
        drop
    end
    (i64.const -73)
    f64.convert_i64_s
    f64.nearest
    (i64.const 94)
    i64.extend16_s
    i64.ctz
    i64.extend32_s
    block (param f64 i64) (result f64)
        i64.extend32_s
        i32.wrap_i64
        i32.ctz
        i64.extend_i32_u
        f32.convert_i64_s
        f64.promote_f32
        f64.neg
        f64.ge
        i32.extend8_s
        f64.convert_i32_u
        (f32.const 3906672.25)
        global.get $global_595851296
        ref.func $function_1125409579
        (i64.const 1310)
        i64.extend32_s
        local.set 0
        table.set $tab_486372255
        drop
    end

    i32.trunc_f64_s
)

)