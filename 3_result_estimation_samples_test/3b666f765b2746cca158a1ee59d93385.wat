(module
(type $sig_function_1100935441 (func))
(type $sig_function_2816456942 (func))
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_323672416 (mut i32) (i32.const 19851721))
(global $global_1205041135 (mut f64) (f64.const 4.39187944870545e+18))
(global $global_1603308652 (mut f32) (f32.const -2.654814255974449e+18))
(func $function_1100935441 (export "function_1100935441")
    (local $temp i32)
    i32.const 9
    loop $b_loop_695963456 (param i32)
        i32.const 9
        loop $b_loop_775679777 (param i32)
            nop
            global.get $global_323672416
            f32.convert_i32_s
            f64.promote_f32
            global.set $global_1205041135
            global.get $global_323672416
            f32.convert_i32_u
            global.set $global_1603308652
            i32.const 1
            i32.sub
            local.tee $temp
            local.get $temp
            i32.const 0
            i32.gt_s
            br_if $b_loop_775679777
            drop
        end
        (i64.const 98)
        f32.convert_i64_u
        i32.reinterpret_f32
        f32.reinterpret_i32
        f32.abs
        f64.promote_f32
        f64.nearest
        i32.trunc_f64_s
        (br_table 1)
        global.get $global_323672416
        i64.extend_i32_s
        f32.convert_i64_s
        f64.promote_f32
        drop
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_695963456
        drop
    end
    (i32.const 288984)
    global.get $global_323672416
    f64.convert_i32_s
    i32.trunc_f64_s
    i32.ge_s
    br_if 0
)
(func $function_2816456942 (export "function_2816456942")
    (local i32)
    (local $temp i32)
    (i64.const 38182)
    drop
    (i32.const 939)
    local.set 0
    (f32.const 117590030548992.0)
    i32.reinterpret_f32
    br_if 0
)
(func $run (export "run") (result i32)
    (local i32)
    (local $temp i32)
    global.get $global_323672416
    i32.clz
    (i32.const -5)
    i32.xor
    i64.extend_i32_u
    f64.convert_i64_u
    f64.sqrt
    f64.abs
    (f64.const 8.06270397388227e+218)
    f64.gt
    (i64.const 4)
    i64.extend32_s
    f64.reinterpret_i64
    (i32.const 0)
    i32.clz
    call $function_1100935441
    f32.reinterpret_i32
    i32.trunc_f32_u
    i64.extend_i32_u
    (i64.const 3)
    i64.le_u
    local.set 0
    i32.trunc_f64_s
    f32.convert_i32_u
    drop
    call $function_2816456942
)

)