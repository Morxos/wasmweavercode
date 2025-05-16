(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_2298045751 (mut f32) (f32.const -1.187458264346919e+18))
(func $run (export "run") (result i32)
    (local f32 i64)
    (local $temp i32)
    i32.const 9
    loop $b_loop_2931854931 (param i32)
        nop
        (i64.const -7631220079599416108)
        i64.extend16_s
        i64.extend32_s
        f64.reinterpret_i64
        f32.demote_f64
        local.tee 0
        f32.nearest
        local.set 0
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_2931854931
        drop
    end
    (i64.const 8350277)
    f64.reinterpret_i64
    i32.trunc_f64_s
    block
        (i64.const -561071590)
        local.tee 1
        i64.extend32_s
        f32.convert_i64_s
        global.set $global_2298045751
        (i64.const -10)
        i64.clz
        f32.convert_i64_s
        f32.trunc
        i64.trunc_f32_u
        global.get $global_2298045751
        global.get $global_2298045751
        f32.eq
        f32.reinterpret_i32
        f32.ceil
        global.set $global_2298045751
        drop
    end

    (f32.const 247698374656.0)
    (f64.const 2.8710813300085036e-144)
    drop
    (f64.const 1.0159210626262503e+112)
    drop
    global.set $global_2298045751
)

)