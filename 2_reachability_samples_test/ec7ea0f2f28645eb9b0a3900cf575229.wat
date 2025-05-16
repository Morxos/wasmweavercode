(module
(type $sig_function_1083399796 (func (param i64 i64) (result i32)))
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1334945198 (mut i64) (i64.const 3927967073208723756))
(global $global_1742261825 (mut f32) (f32.const -4.721100207213773e+17))
(func $function_1083399796 (export "function_1083399796") (param i64 i64) (result i32)
    (local $temp i32)
    ;;FLAG_0
    local.get 0
    f64.convert_i64_s
    i64.trunc_f64_u
    (i64.const 32)
    i64.lt_s
    f32.convert_i32_s
    f32.abs
    i32.trunc_f32_u
    global.get $global_1334945198
    i64.extend32_s
    i64.extend16_s
    i64.clz
    i64.eqz
    (br_table 0)
)
(func $run (export "run")
    (local f32)
    (local $temp i32)
    ;;FLAG_1
    block
        block
            global.get $global_1334945198
            (f64.const 3.998005764298136e-107)
            f32.demote_f64
            (f32.const 8.850777133216355e-18)
            f32.ne
            i32.extend16_s
            f32.convert_i32_u
            global.set $global_1742261825
            drop
        end

        ;;FLAG_3
        local.get 0
        i64.trunc_f32_u
        i64.clz
        local.get 0
        (f64.const 1.8071967586797437e-59)
        f64.trunc
        nop
        drop
        i64.trunc_f32_u
        i64.gt_u
        (br_table 0 1)
        ;;FLAG_4
    end

    ;;FLAG_2
    local.get 0
    drop
    global.get $global_1334945198
    global.get $global_1334945198
    call $function_1083399796
    (br_table 0)
)

)