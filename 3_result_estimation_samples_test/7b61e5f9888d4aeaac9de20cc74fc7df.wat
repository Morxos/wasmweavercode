(module
(type $sig_function_1532837098 (func (param i32)))
(type $sig_function_3403897051 (func))
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_3193160510 (mut i32) (i32.const 619906801))
(global $global_4212453006 (mut i64) (i64.const 6557340053946053937))
(global $global_1081855780 (mut f32) (f32.const 9.138123052062605e+18))
(global $global_1870575322 (mut funcref) (ref.null func))
(func $function_1532837098 (export "function_1532837098") (param i32)
    (local $temp i32)
    (i32.const 478457440)
    f32.convert_i32_s
    i64.trunc_f32_s
    i32.wrap_i64
    i32.extend8_s
    i64.extend_i32_u
    (i32.const 652969)
    f32.convert_i32_s
    f32.floor
    global.set $global_1081855780
    f32.convert_i64_s
    i32.trunc_f32_s
    (f64.const 1.3287520541876772e-67)
    (f32.const 4.891853675812618e+17)
    nop
    (f32.const 0.0)
    i64.trunc_f32_u
    f32.convert_i64_s
    i64.trunc_f32_s
    drop
    f32.sqrt
    nop
    global.get $global_3193160510
    i32.clz
    nop
    i32.clz
    i64.extend_i32_u
    drop
    f32.sqrt
    drop
    drop
    i32.eqz
    (br_table 0)
)
(func $function_3403897051 (export "function_3403897051")
    (local i32 i32 f32 f32 i64)
    (local $temp i32)
    i32.const 9
    loop $b_loop_1428513345 (param i32)
        i32.const 9
        loop $b_loop_3640846571 (param i32)
            local.get 0
            local.tee 1
            i32.popcnt
            f32.convert_i32_u
            global.get $global_3193160510
            drop
            (i64.const 76342053)
            global.set $global_4212453006
            f32.nearest
            f32.ceil
            f32.ceil
            f32.ceil
            (i32.const 0)
            f32.reinterpret_i32
            f32.eq
            br_if 2
            i32.const 1
            i32.sub
            local.tee $temp
            local.get $temp
            i32.const 0
            i32.gt_s
            br_if $b_loop_3640846571
            drop
        end
        (i64.const 75132081)
        local.get 0
        f32.reinterpret_i32
        i64.trunc_f32_u
        i64.add
        block
            nop
            local.get 0
            global.set $global_3193160510
            (f32.const -2.1351905528622688e-26)
            local.tee 2
            local.set 2
        end

        f32.convert_i64_u
        (i32.const -760530)
        call $function_1532837098
        local.tee 3
        block (param f32)
            i64.trunc_f32_s
            global.set $global_4212453006
            (f64.const 6.882143215454412e-234)
            f64.floor
            f64.sqrt
            f64.nearest
            f64.sqrt
            f64.sqrt
            f32.demote_f64
            drop
        end

        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_1428513345
        drop
    end
    local.get 0
    i32.extend8_s
    i32.clz
    i64.extend_i32_s
    (f32.const 4.186565250842387e-26)
    f32.abs
    global.set $global_1081855780
    local.tee 4
    f64.convert_i64_u
    i32.trunc_f64_s
    (br_table 0)
)
(func $run (export "run") (result f32)
    (local f64 i64 i32 funcref)
    (local $temp i32)
    nop
    (i64.const 5)
    nop
    i64.extend8_s
    (f64.const 1.2523907973360682e+193)
    local.get 0
    f64.gt
    call $function_3403897051
    f64.convert_i32_u
    f32.demote_f64
    (f32.const -4.230615675198236e-25)
    f32.min
    drop
    i64.clz
    local.tee 1
    i64.extend8_s
    nop
    f64.convert_i64_s
    f64.sqrt
    f64.ceil
    ref.func $function_1532837098
    ref.func $function_1532837098
    (i32.const -13675496)
    i32.clz
    i32.popcnt
    i32.clz
    local.set 2
    nop
    global.set $global_1870575322
    local.set 3
    f32.demote_f64
)

)