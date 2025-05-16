(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_2423144806 (mut i64) (i64.const -8654190364822031035))
(global $global_338618514 (mut f64) (f64.const -4.96621892721705e+16))
(global $global_2119466867 (mut f32) (f32.const -3.3418166087995884e+18))
(func $run (export "run") (result f32)
    (local f32 i64 f64 f32 f64)
    (local $temp i32)
    i32.const 9
    loop $b_loop_3067599460 (param i32)
        i32.const 9
        loop $b_loop_1431136546 (param i32)
            i32.const 9
            loop $b_loop_4016955964 (param i32)
                nop
                nop
                (i64.const 8909)
                i64.extend8_s
                f64.convert_i64_u
                f64.trunc
                i64.reinterpret_f64
                global.set $global_2423144806
                (i32.const 6909726)
                global.get $global_2423144806
                global.get $global_2423144806
                i64.shr_u
                local.get 0
                drop
                f64.convert_i64_s
                f64.abs
                (i64.const -573281)
                i64.eqz
                f32.convert_i32_s
                f32.abs
                f32.sqrt
                nop
                i32.trunc_f32_s
                drop
                f64.sqrt
                (f32.const -6.244279726895979e+21)
                drop
                global.set $global_338618514
                i64.extend_i32_u
                local.tee 1
                f64.reinterpret_i64
                i64.trunc_f64_s
                f32.convert_i64_u
                return
                f32.ceil
                i32.trunc_f32_s
                i32.clz
                i64.extend_i32_u
                f64.convert_i64_u
                i64.reinterpret_f64
                i64.clz
                drop
                (f64.const 2.462078769959385e-88)
                f32.demote_f64
                i32.reinterpret_f32
                i32.ctz
                i32.clz
                f32.convert_i32_u
                local.set 0
                (i32.const -813372)
                i64.extend_i32_s
                i64.popcnt
                f64.convert_i64_u
                f64.nearest
                f64.nearest
                f64.ceil
                i64.reinterpret_f64
                local.get 0
                global.get $global_2423144806
                (i64.const 4329581)
                i64.sub
                f64.reinterpret_i64
                i64.reinterpret_f64
                i64.clz
                i32.wrap_i64
                i32.extend8_s
                f32.convert_i32_s
                f32.ge
                (i32.const 56982005)
                i32.extend16_s
                i32.rotl
                i32.ctz
                (f32.const 4.933812328018739e+16)
                f32.nearest
                i64.trunc_f32_s
                i64.extend32_s
                i64.extend16_s
                f32.convert_i64_u
                f32.nearest
                (f64.const 5.097376646724688e-284)
                local.tee 2
                i64.reinterpret_f64
                i64.extend16_s
                f32.convert_i64_u
                f32.eq
                i32.rotr
                (i64.const 82980)
                global.get $global_2423144806
                i64.le_s
                i32.shl
                (f64.const 1.046052682887715e-279)
                i64.trunc_f64_u
                i64.extend32_s
                i64.extend32_s
                i64.popcnt
                i64.eqz
                local.get 0
                f32.trunc
                f32.trunc
                global.set $global_2119466867
                i32.rotl
                drop
                i64.clz
                f32.convert_i64_s
                local.set 0
                i32.const 1
                i32.sub
                local.tee $temp
                local.get $temp
                i32.const 0
                i32.gt_s
                br_if $b_loop_4016955964
                drop
            end
            local.get 0
            f64.promote_f32
            i32.const 9
            loop $b_loop_177438018 (param i32)
                (f64.const 498.9755170086389)
                i32.trunc_f64_s
                i32.clz
                f32.convert_i32_s
                f32.neg
                return
                (i64.const -3435)
                nop
                f64.reinterpret_i64
                f64.floor
                drop
                local.tee 3
                f32.abs
                (i64.const 0)
                i64.clz
                drop
                local.set 0
                (f64.const 7.829354294400386e-28)
                local.tee 4
                drop
                nop
                nop
                local.get 0
                f32.abs
                i32.reinterpret_f32
                f64.convert_i32_s
                f64.sqrt
                local.set 2
                (f32.const 457148960.0)
                br 3
                global.set $global_2119466867
                i32.const 1
                i32.sub
                local.tee $temp
                local.get $temp
                i32.const 0
                i32.gt_s
                br_if $b_loop_177438018
                drop
            end
            local.get 0
            local.set 0
            i32.trunc_f64_s
            i32.extend8_s
            drop
            i32.const 1
            i32.sub
            local.tee $temp
            local.get $temp
            i32.const 0
            i32.gt_s
            br_if $b_loop_1431136546
            drop
        end
        local.get 0
        drop
        (i32.const 117985868)
        f32.convert_i32_u
        i32.reinterpret_f32
        f32.convert_i32_u
        global.set $global_2119466867
        global.get $global_2423144806
        f32.convert_i64_u
        i64.trunc_f32_s
        nop
        f32.convert_i64_u
        f32.sqrt
        f32.ceil
        (i64.const 6868)
        f32.convert_i64_u
        f32.eq
        i32.eqz
        i64.extend_i32_u
        f32.convert_i64_u
        local.set 0
        (f32.const -4.8047360710090424e+19)
        local.set 0
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_3067599460
        drop
    end
    nop
    (f32.const -1.4668272152462691e-09)
    f32.nearest
    nop
)

)