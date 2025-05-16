(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_176327797 i32 (i32.const 1440419888))
(global $global_448247903 (mut i64) (i64.const 3251818492252607660))
(global $global_617567759 (mut f64) (f64.const -7.541310619978949e+18))
(func $run (export "run") (result f64)
    (local i64 i32 f32 f64)
    (local $temp i32)
    i32.const 9
    loop $b_loop_1203967784 (param i32)
        i32.const 9
        loop $b_loop_3187708702 (param i32)
            i32.const 9
            loop $b_loop_973837923 (param i32)
                nop
                (f32.const 3.8250246069473914e-14)
                f32.trunc
                i32.reinterpret_f32
                f64.convert_i32_u
                nop
                drop
                (f64.const 2.7342875683109724e-235)
                i64.reinterpret_f64
                i64.clz
                local.set 0
                global.get $global_176327797
                f32.convert_i32_u
                i64.trunc_f32_u
                f64.convert_i64_u
                i32.trunc_f64_u
                i64.extend_i32_u
                i64.extend16_s
                local.get 0
                i64.popcnt
                (f32.const 1.6804887335423225e+31)
                i32.reinterpret_f32
                f32.convert_i32_s
                i32.reinterpret_f32
                i32.clz
                f32.convert_i32_u
                f64.promote_f32
                i32.trunc_f64_s
                f32.convert_i32_s
                f64.promote_f32
                i64.reinterpret_f64
                global.set $global_448247903
                i64.lt_u
                i64.extend_i32_u
                i64.eqz
                i32.ctz
                i64.extend_i32_s
                f64.convert_i64_s
                f64.ceil
                i64.trunc_f64_s
                i64.extend16_s
                i64.ctz
                global.get $global_176327797
                local.set 1
                f32.convert_i64_u
                f32.sqrt
                i64.trunc_f32_u
                drop
                (i64.const -435547)
                local.set 0
                (f64.const 1.0874608385898876e-248)
                (f32.const -0.01355257909744978)
                local.set 2
                f64.nearest
                i32.trunc_f64_u
                i64.extend_i32_s
                i64.ctz
                f32.convert_i64_u
                f64.promote_f32
                i64.reinterpret_f64
                f64.convert_i64_u
                f64.sqrt
                return
                f64.sqrt
                i64.reinterpret_f64
                f64.convert_i64_s
                global.set $global_617567759
                i32.const 1
                i32.sub
                local.tee $temp
                local.get $temp
                i32.const 0
                i32.gt_s
                br_if $b_loop_973837923
                drop
            end
            (i64.const 0)
            i64.ctz
            f32.convert_i64_s
            f64.promote_f32
            local.set 3
            i32.const 1
            i32.sub
            local.tee $temp
            local.get $temp
            i32.const 0
            i32.gt_s
            br_if $b_loop_3187708702
            drop
        end
        local.get 0
        drop
        (i32.const 442)
        f32.convert_i32_u
        i64.trunc_f32_s
        global.set $global_448247903
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_1203967784
        drop
    end
    (i32.const -63584)
    i32.ctz
    i32.ctz
    nop
    local.set 1
    (f64.const 4.443843650631072e+148)
)

)