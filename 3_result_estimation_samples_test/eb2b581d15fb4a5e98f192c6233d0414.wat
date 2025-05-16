(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_1481361937 (mut i64) (i64.const -6088667373070668100))
(global $global_2093485050 (mut f32) (f32.const -6.955110884834279e+18))
(global $global_1771310168 (mut f64) (f64.const -6.29323662774939e+18))
(func $run (export "run") (result f64)
    (local i64 f64 i32)
    (local $temp i32)
    (i64.const -36)
    global.set $global_1481361937
    nop
    global.get $global_1481361937
    local.set 0
    (f32.const -303.9432678222656)
    i64.trunc_f32_s
    i64.extend16_s
    f64.reinterpret_i64
    local.get 0
    i64.eqz
    block (param i32)
        i64.extend_i32_u
        i32.wrap_i64
        i32.extend8_s
        f32.convert_i32_s
        f64.promote_f32
        local.tee 1
        block
            i32.const 9
            loop $b_loop_1892091007 (param i32)
                (f32.const -2.1474448885783204e-09)
                f32.trunc
                global.set $global_2093485050
                (i32.const -12)
                global.get $global_1481361937
                i64.popcnt
                f64.reinterpret_i64
                i32.trunc_f64_s
                i32.le_s
                i64.extend_i32_u
                i64.eqz
                br_if 1
                nop
                (i64.const -1633686589656853113)
                (i32.const 746799)
                i64.extend_i32_u
                i64.rem_u
                (i64.const -14457)
                i64.rotl
                (i64.const 5659555521437003986)
                i64.lt_u
                local.tee 2
                br_if 1
                i32.const 1
                i32.sub
                local.tee $temp
                local.get $temp
                i32.const 0
                i32.gt_s
                br_if $b_loop_1892091007
                drop
            end
            (i64.const -62)
            drop
            (f64.const 1.1008716900068306e-193)
            f64.floor
            (i32.const 332402883)
            (f32.const 2.8173300482180666e+21)
            f32.nearest
            f32.sqrt
            i64.trunc_f32_s
            (i32.const 3)
            (i32.const -3539)
            i32.le_u
            f32.convert_i32_s
            i64.trunc_f32_s
            i64.mul
            i64.extend8_s
            i32.wrap_i64
            i32.le_u
            f64.convert_i32_s
            f64.ge
            drop
        end

        global.set $global_1771310168
        (i64.const 324753)
        f64.reinterpret_i64
        i64.trunc_f64_u
        i64.extend16_s
        i64.extend32_s
        i64.popcnt
        local.set 0
        br 0
    end

    (i64.const 8794237)
    global.set $global_1481361937
    br 0
)

)