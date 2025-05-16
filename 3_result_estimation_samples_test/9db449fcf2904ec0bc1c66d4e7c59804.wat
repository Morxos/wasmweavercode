(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_4033382835 i32 (i32.const 1221449072))
(global $global_1140240140 (mut i32) (i32.const 749314995))
(global $global_3398423315 (mut f32) (f32.const -8.973337595140375e+18))
(global $global_3325542941 (mut i64) (i64.const -3337352103810015998))
(func $run (export "run") (result f32)
    (local i32 i32)
    (local $temp i32)
    block
        (f32.const 3.752353634768126e+18)
        f32.neg
        (i32.const 43132328)
        i64.extend_i32_s
        global.get $global_4033382835
        local.tee 0
        i32.clz
        f32.convert_i32_u
        i32.const 9
        loop $b_loop_2326573076 (param i32)
            (i32.const 784010754)
            global.set $global_1140240140
            i32.const 9
            loop $b_loop_2802811238 (param i32)
                (i32.const 976751)
                i32.clz
                local.set 0
                local.get 0
                local.tee 1
                br_if 2
                i32.const 1
                i32.sub
                local.tee $temp
                local.get $temp
                i32.const 0
                i32.gt_s
                br_if $b_loop_2802811238
                drop
            end
            (f32.const 0.0)
            global.get $global_4033382835
            br_if 2
            return
            (f32.const 0.000486044300487265)
            f32.min
            i32.trunc_f32_s
            i32.eqz
            i64.extend_i32_u
            i32.wrap_i64
            f32.convert_i32_s
            f32.ceil
            global.set $global_3398423315
            i32.const 1
            i32.sub
            local.tee $temp
            local.get $temp
            i32.const 0
            i32.gt_s
            br_if $b_loop_2326573076
            drop
        end
        i32.trunc_f32_s
        i32.eqz
        global.set $global_1140240140
        i64.ctz
        (i32.const -47)
        drop
        global.get $global_4033382835
        local.set 0
        f32.convert_i64_s
        nop
        global.set $global_3398423315
        (f32.const 750376353529856.0)
        f32.eq
        f64.convert_i32_u
        i32.const 9
        loop $b_loop_2040231541 (param i32)
            (i32.const -45)
            i64.extend_i32_s
            i64.extend8_s
            i32.const 9
            loop $b_loop_2078347868 (param i32)
                (i32.const 1619986164)
                local.set 0
                (f64.const 2.527442972573682e+224)
                drop
                global.get $global_4033382835
                nop
                br_if 2
                i32.const 1
                i32.sub
                local.tee $temp
                local.get $temp
                i32.const 0
                i32.gt_s
                br_if $b_loop_2078347868
                drop
            end
            f32.convert_i64_u
            (f64.const 3.257258630049179e+136)
            nop
            drop
            f64.promote_f32
            f32.demote_f64
            f32.sqrt
            i64.trunc_f32_s
            global.set $global_3325542941
            (f64.const 2.7446535120109475e+165)
            nop
            nop
            drop
            i32.const 1
            i32.sub
            local.tee $temp
            local.get $temp
            i32.const 0
            i32.gt_s
            br_if $b_loop_2040231541
            drop
        end
        i32.trunc_f64_u
        i32.extend8_s
        br_if 0
    end

    (f32.const 9.083537686115456e-21)
    drop
    (i64.const 9470)
    i64.eqz
    f64.convert_i32_u
    drop
    (f32.const 1265043456.0)
)

)