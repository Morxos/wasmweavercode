(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_3558149900 (mut f32) (f32.const -2.285194868038828e+18))
(func $run (export "run") (result f64)
    (local f64 f32 i64 i64)
    (local $temp i32)
    i32.const 9
    loop $b_loop_538027471 (param i32)
        block
            (i32.const 2095)
            i32.clz
            f32.reinterpret_i32
            global.set $global_3558149900
            local.get 0
            local.set 0
        end

        (i64.const 10936199)
        f32.convert_i64_u
        block
            (i32.const 80717093)
            f32.convert_i32_u
            i32.trunc_f32_u
            nop
            f32.convert_i32_s
            global.set $global_3558149900
        end

        global.get $global_3558149900
        f32.eq
        f32.convert_i32_s
        local.set 1
        i32.const 9
        loop $b_loop_1396451646 (param i32)
            (i32.const -63)
            i64.extend_i32_s
            local.tee 2
            i32.const 9
            loop $b_loop_2517206193 (param i32)
                nop
                (f64.const 6.852228702920008e+83)
                drop
                global.get $global_3558149900
                f32.sqrt
                global.set $global_3558149900
                local.get 0
                f64.abs
                drop
                global.get $global_3558149900
                f64.promote_f32
                nop
                return
                drop
                i32.const 1
                i32.sub
                local.tee $temp
                local.get $temp
                i32.const 0
                i32.gt_s
                br_if $b_loop_2517206193
                drop
            end
            local.tee 3
            i64.eqz
            if
                (i64.const 9513763)
                drop
                global.get $global_3558149900
                f32.trunc
                drop
                (i64.const 0)
                f64.reinterpret_i64
                drop
                (f64.const 7.501134666525949e+139)
                f64.trunc
                drop
                nop
                (i64.const 21020)
                i64.popcnt
                drop
            else
                local.get 0
                nop
                f64.nearest
                local.set 0
                (f32.const -1.8008023589564199e-34)
                drop
                (f64.const 6.604064375113076e+183)
                nop
                br 3
                f64.floor
                return
                i64.reinterpret_f64
                i64.extend8_s
                (i64.const -47032803)
                i64.popcnt
                i64.le_u
                br_if 0
                nop
            end

            i32.const 1
            i32.sub
            local.tee $temp
            local.get $temp
            i32.const 0
            i32.gt_s
            br_if $b_loop_1396451646
            drop
        end
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_538027471
        drop
    end
    nop
    (i64.const -5150)
    f64.reinterpret_i64
    f64.ceil
)

)