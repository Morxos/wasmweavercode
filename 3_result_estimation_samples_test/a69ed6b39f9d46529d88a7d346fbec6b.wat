(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_609006008 (mut i32) (i32.const 709570002))
(global $global_1175602611 (mut f64) (f64.const 7.584854226302673e+18))
(global $global_301064435 (mut f32) (f32.const -7.500098116792615e+18))
(func $run (export "run") (result i32)
    (local i32 f32 i64 f32)
    (local $temp i32)
    block
        i32.const 9
        loop $b_loop_1409225376 (param i32)
            i32.const 9
            loop $b_loop_2277383840 (param i32)
                global.get $global_609006008
                i32.clz
                local.tee 0
                global.get $global_609006008
                i32.rotr
                i32.ctz
                br_if 2
                (f32.const 4.9435189782355987e-23)
                drop
                i32.const 1
                i32.sub
                local.tee $temp
                local.get $temp
                i32.const 0
                i32.gt_s
                br_if $b_loop_2277383840
                drop
            end
            (i64.const -463)
            i32.wrap_i64
            f32.convert_i32_s
            nop
            f32.ceil
            (f64.const 6.201690732458657e-175)
            i32.trunc_f64_s
            f64.convert_i32_s
            f64.abs
            global.set $global_1175602611
            local.set 1
            (i64.const 562670501947425474)
            f64.reinterpret_i64
            f64.sqrt
            drop
            i32.const 9
            loop $b_loop_3714945661 (param i32)
                (f32.const 7.544813628769672e-17)
                i64.trunc_f32_u
                local.set 2
                (i32.const -703)
                i32.ctz
                global.set $global_609006008
                (f32.const 352637.84375)
                local.tee 3
                i32.reinterpret_f32
                f32.convert_i32_s
                i64.trunc_f32_u
                i64.clz
                (i64.const -14717868)
                (i32.const -33)
                local.set 0
                i64.shl
                (f32.const -2.0623906299806128e-22)
                global.set $global_301064435
                (f32.const 1.5922831494590443e-35)
                global.set $global_301064435
                f64.convert_i64_s
                i32.trunc_f64_s
                br_if 2
                (i32.const -21859)
                local.get 0
                i32.sub
                global.set $global_609006008
                i32.const 1
                i32.sub
                local.tee $temp
                local.get $temp
                i32.const 0
                i32.gt_s
                br_if $b_loop_3714945661
                drop
            end
            i32.const 1
            i32.sub
            local.tee $temp
            local.get $temp
            i32.const 0
            i32.gt_s
            br_if $b_loop_1409225376
            drop
        end
        (f32.const 356704190464.0)
        i32.const 9
        loop $b_loop_1366143292 (param i32)
            (i32.const -8)
            i32.extend16_s
            i32.ctz
            loop $loop_1829908077 (param i32)    global.get $global_609006008
                i32.popcnt
                drop
                (f64.const 8.074958850925121e-284)
                i64.trunc_f64_u
                f64.reinterpret_i64
                i64.reinterpret_f64
                i64.eqz
                br_if 2
                i32.const 1
                i32.sub
                local.tee $temp
                local.get $temp
                i32.const 0
                i32.gt_s
                br_if $loop_1829908077
                drop
            end
            nop
            i32.const 1
            i32.sub
            local.tee $temp
            local.get $temp
            i32.const 0
            i32.gt_s
            br_if $b_loop_1366143292
            drop
        end
        f32.floor
        drop
    end

    nop
    (i32.const -510)
    global.set $global_609006008
    (i32.const -6)
)

)