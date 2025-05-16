(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(table $tab_1753213262 2 funcref)
(global $global_3110308390 (mut i64) (i64.const -6684521562177609361))
(func $run (export "run") (result f32)
    (local i64 f64 i32 f32 funcref)
    (local $temp i32)
    global.get $global_3110308390
    (f64.const 8.876197199750429e+18)
    drop
    local.set 0
    nop
    (i64.const -4)
    i32.const 9
    loop $b_loop_3173964398 (param i32)
        (f64.const 4.101645082230004e-257)
        local.set 1
        global.get $global_3110308390
        f32.convert_i64_s
        f32.trunc
        f32.trunc
        global.get $global_3110308390
        i64.clz
        f32.convert_i64_s
        i32.trunc_f32_u
        i32.eqz
        local.set 2
        br 1
        local.set 3
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_3173964398
        drop
    end
    (i32.const 896848936)
    (f64.const 1.3753419258978577e-150)
    i64.trunc_f64_u
    global.set $global_3110308390
    i64.extend_i32_s
    f64.convert_i64_s
    local.set 1
    local.set 0
    global.get $global_3110308390
    local.set 0
    (i32.const 46)
    i32.ctz
    i32.extend8_s
    table.get $tab_1753213262
    nop
    local.tee 4
    drop
    nop
    nop
    (f32.const 155323.0)
)

)