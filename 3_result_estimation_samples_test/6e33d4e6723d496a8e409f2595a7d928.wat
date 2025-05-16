(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_3416094879 (mut f32) (f32.const 4.687679864092754e+18))
(global $global_2185888868 (mut i64) (i64.const 6128579176157989307))
(func $run (export "run") (result f64)
    (local f32 i64 i64 f32)
    (local $temp i32)
    block
        i32.const 9
        loop $b_loop_1716616075 (param i32)
            (i32.const 66481114)
            f32.reinterpret_i32
            global.set $global_3416094879
            nop
            local.get 0
            local.set 0
            i32.const 1
            i32.sub
            local.tee $temp
            local.get $temp
            i32.const 0
            i32.gt_s
            br_if $b_loop_1716616075
            drop
        end
        (f64.const 4.568659217733543e+139)
        drop
        (i64.const -2500566962780531514)
        i64.extend16_s
        local.tee 1
        i64.extend8_s
        i64.ctz
        f64.convert_i64_u
        i32.trunc_f64_s
        i32.clz
        f32.convert_i32_s
        i32.trunc_f32_s
        i32.clz
        i64.extend_i32_u
        drop
    end

    (i32.const 4)
    drop
    global.get $global_3416094879
    f32.floor
    local.set 0
    local.get 0
    i32.trunc_f32_s
    drop
    nop
    (i64.const 308683)
    i64.clz
    local.tee 2
    i64.clz
    (i32.const -1298)
    i64.extend_i32_u
    i64.add
    i64.clz
    global.set $global_2185888868
    global.get $global_3416094879
    local.set 0
    global.get $global_3416094879
    local.tee 3
    drop
    local.get 0
    i32.trunc_f32_u
    f32.convert_i32_s
    f64.promote_f32
)

)