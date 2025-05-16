(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_4265046950 (mut f32) (f32.const 2.474269224013398e+18))
(global $global_2152025680 (mut f64) (f64.const 2.2029289368535798e+18))
(func $run (export "run") (result f32)
    (local f32 i64 i32 i64)
    (local $temp i32)
    block
        i32.const 9
        loop $b_loop_1245719908 (param i32)
            local.get 0
            nop
            i32.trunc_f32_u
            i32.extend8_s
            i64.extend_i32_s
            i64.ctz
            local.set 1
            local.get 0
            global.set $global_4265046950
            i32.const 1
            i32.sub
            local.tee $temp
            local.get $temp
            i32.const 0
            i32.gt_s
            br_if $b_loop_1245719908
            drop
        end
        (i64.const -917)
        i64.ctz
        i32.wrap_i64
        local.set 2
        local.get 0
        global.set $global_4265046950
    end

    (i32.const 1967898092)
    i64.extend_i32_u
    i64.clz
    f64.convert_i64_u
    global.set $global_2152025680
    local.get 0
    i32.reinterpret_f32
    drop
    local.get 0
    i64.trunc_f32_s
    local.tee 3
    i64.eqz
    f32.reinterpret_i32
)

)