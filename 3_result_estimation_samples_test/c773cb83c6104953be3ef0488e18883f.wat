(module
(type $sig_function_517962715 (func (param f32)))
(type $sig_function_1308718973 (func (param f64)))
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_127130329 f64 (f64.const -8.286827488203819e+18))
(global $global_1029454130 (mut i32) (i32.const -2066517141))
(global $global_4027196964 (mut f32) (f32.const 6.988104480004768e+18))
(func $function_517962715 (export "function_517962715") (param f32)
    (local f64 i64)
    (local $temp i32)
    nop
    (f32.const -1.1637786526393759e-35)
    f32.trunc
    global.get $global_127130329
    f64.ceil
    (f32.const -5.574239210992405e-34)
    f32.neg
    f32.nearest
    i32.trunc_f32_u
    global.get $global_127130329
    drop
    local.get 0
    drop
    f32.convert_i32_s
    local.set 0
    local.set 1
    f32.ceil
    i64.trunc_f32_u
    i64.extend8_s
    i64.ctz
    local.set 2
)
(func $function_1308718973 (export "function_1308718973") (param f64)
    (local $temp i32)
    i32.const 9
    loop $b_loop_3711404303 (param i32)
        global.get $global_127130329
        f64.neg
        (i32.const 47)
        global.set $global_1029454130
        local.set 0
        local.get 0
        local.set 0
        return
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_3711404303
        drop
    end
    local.get 0
    f64.ceil
    f32.demote_f64
    i64.trunc_f32_s
    i64.extend8_s
    i64.extend16_s
    f64.reinterpret_i64
    local.set 0
    block
        i32.const 9
        loop $b_loop_2899960567 (param i32)
            (f32.const -8.279172326141156e-38)
            local.get 0
            i64.trunc_f64_u
            i64.extend16_s
            f64.convert_i64_u
            local.set 0
            global.set $global_4027196964
            br 1
            br 1
            i32.const 1
            i32.sub
            local.tee $temp
            local.get $temp
            i32.const 0
            i32.gt_s
            br_if $b_loop_2899960567
            drop
        end
        (f32.const -4.593941400093776e-28)
        nop
        call $function_517962715
        global.get $global_127130329
        local.set 0
    end

)
(func $run (export "run") (result f64)
    (local i64)
    (local $temp i32)
    global.get $global_127130329
    call $function_1308718973
    nop
    (i64.const 6063073)
    local.set 0
    (i64.const 202)
    i64.ctz
    i64.ctz
    i64.extend32_s
    local.set 0
    (f64.const 3.571855429568893e-226)
    br 0
)

)