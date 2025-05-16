(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(table $tab_450348099 3 funcref)
(global $global_476924262 (mut i64) (i64.const -3810420586323920711))
(global $global_441952237 (mut f32) (f32.const -2.1966983382150676e+18))
(global $global_1018668397 (mut f64) (f64.const -4.3131942923682816e+18))
(func $run (export "run") (result i32)
    (local i32 f32 i32)
    (local $temp i32)
    (i32.const -947017562)
    i32.extend8_s
    (i32.const -61)
    i32.gt_s
    i32.extend8_s
    local.get 0
    i32.shl
    i32.clz
    (f32.const 3633806.0)
    block
        global.get $global_476924262
        f32.convert_i64_u
        local.tee 1
        global.set $global_441952237
        block
            (i32.const 61)
            (f64.const 2.1732556929762646e+282)
            drop
            (f64.const 0.0)
            f64.trunc
            local.get 0
            local.set 0
            f64.floor
            i64.reinterpret_f64
            i64.extend16_s
            (f32.const 4139476992.0)
            local.set 1
            i64.extend16_s
            drop
            br_if 0
            (f64.const 3.044580059025067e-74)
            i64.trunc_f64_u
            (i32.const 50)
            i64.extend_i32_s
            i64.div_u
            i32.const 9
            loop $b_loop_3109096662 (param i32)
                (i64.const -59)
                i64.eqz
                i32.eqz
                local.tee 2
                (f64.const 6.99366885296364e-237)
                i64.reinterpret_f64
                i64.eqz
                i32.shl
                br_if 1
                i32.const 1
                i32.sub
                local.tee $temp
                local.get $temp
                i32.const 0
                i32.gt_s
                br_if $b_loop_3109096662
                drop
            end
            global.get $global_476924262
            i64.lt_u
            if
                (f64.const 3.4811653994313844e-136)
                i32.trunc_f64_u
                i32.clz
                nop
                drop
            else
                local.get 0
                table.get $tab_450348099
                drop
                (f64.const 6.134700530757223e+152)
                f64.trunc
                nop
                f64.trunc
                f32.demote_f64
                (f32.const -5.349233274914062e-31)
                local.set 1
                nop
                f32.trunc
                f64.promote_f32
                drop
                br 0
                (i64.const -882)
                i64.extend32_s
                i32.wrap_i64
                i64.extend_i32_s
                i64.extend8_s
                i32.wrap_i64
                (i32.const -23275)
                i32.shl
                i32.eqz
                f32.reinterpret_i32
                i32.trunc_f32_s
                drop
            end

            local.get 0
            i32.extend8_s
            br 2
            (f32.const -1.1305440466087446e+38)
            drop
            f64.convert_i32_u
            f64.trunc
            global.set $global_1018668397
        end

    end

    i64.trunc_f32_s
    global.set $global_476924262
)

)