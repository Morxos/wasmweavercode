(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_446715355 (mut f32) (f32.const 8.510298614067626e+18))
(global $global_1359298025 (mut i32) (i32.const -392643654))
(global $global_4228681641 (mut f64) (f64.const 1.2960990363118387e+18))
(global $global_845818083 (mut i64) (i64.const -1373449472186450292))
(func $run (export "run") (result i32)
    (local i64 i32 i32)
    (local $temp i32)
    local.get 0
    i32.const 9
    loop $b_loop_3019096922 (param i32)
        (i32.const -56019)
        i32.clz
        f64.convert_i32_s
        f32.demote_f64
        global.set $global_446715355
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_3019096922
        drop
    end
    (i32.const -9)
    local.set 1
    f64.reinterpret_i64
    (i32.const 37896282)
    i32.extend8_s
    local.tee 2
    (i64.const 1584471)
    i32.wrap_i64
    i32.le_s
    f64.convert_i32_s
    i32.trunc_f64_s
    i32.clz
    global.set $global_1359298025
    i64.trunc_f64_s
    f32.convert_i64_u
    global.set $global_446715355
    (i64.const 723523307)
    (i32.const 78)
    f64.convert_i32_s
    nop
    f64.ceil
    i32.trunc_f64_u
    f64.convert_i32_u
    global.set $global_4228681641
    global.set $global_845818083
    (i32.const 530684761)
    return
)

)