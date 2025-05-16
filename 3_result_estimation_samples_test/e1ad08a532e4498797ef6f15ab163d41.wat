(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_3409723574 (mut i32) (i32.const 601750169))
(global $global_3092714197 (mut f32) (f32.const 8.733944776715403e+18))
(func $run (export "run") (result f64)
    (local i32 f32 i64 i32)
    (local $temp i32)
    i32.const 9
    loop $b_loop_2399128027 (param i32)
        i32.const 9
        loop $b_loop_3278006751 (param i32)
            i32.const 9
            loop $b_loop_3131823185 (param i32)
                local.get 0
                (i64.const -881)
                f32.convert_i64_s
                drop
                global.set $global_3409723574
                i32.const 1
                i32.sub
                local.tee $temp
                local.get $temp
                i32.const 0
                i32.gt_s
                br_if $b_loop_3131823185
                drop
            end
            i32.const 9
            loop $b_loop_149725367 (param i32)
                (i32.const 69150140)
                i64.extend_i32_s
                i64.eqz
                (f32.const 6979111.5)
                i32.trunc_f32_u
                i32.rotl
                i32.ctz
                local.set 0
                i32.const 1
                i32.sub
                local.tee $temp
                local.get $temp
                i32.const 0
                i32.gt_s
                br_if $b_loop_149725367
                drop
            end
            block
                (i32.const -5)
                i32.ctz
                global.set $global_3409723574
                nop
                (f32.const 2.1047023521462815e-22)
                i32.trunc_f32_u
                i32.eqz
                (i32.const 93)
                i32.rotl
                br_if 0
            end

            (f64.const 1.59766121614243e+129)
            f64.trunc
            nop
            return
            drop
            i32.const 1
            i32.sub
            local.tee $temp
            local.get $temp
            i32.const 0
            i32.gt_s
            br_if $b_loop_3278006751
            drop
        end
        nop
        (f32.const 7.301717313415402e+30)
        i32.reinterpret_f32
        f32.convert_i32_u
        f32.ceil
        local.tee 1
        i64.trunc_f32_s
        i64.clz
        i32.wrap_i64
        (i32.const -383303)
        local.set 0
        f32.convert_i32_u
        f32.ceil
        global.set $global_3092714197
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_2399128027
        drop
    end
    global.get $global_3409723574
    (i32.const -1284294866)
    i32.shl
    i64.extend_i32_u
    local.set 2
    local.get 0
    f64.convert_i32_u
    i64.reinterpret_f64
    drop
    local.get 0
    i32.extend16_s
    global.set $global_3409723574
    (i32.const -2128308)
    f32.convert_i32_u
    f32.ceil
    nop
    i64.trunc_f32_u
    i64.popcnt
    local.set 2
    global.get $global_3409723574
    i32.ctz
    local.tee 3
    i64.extend_i32_s
    f64.convert_i64_s
)

)