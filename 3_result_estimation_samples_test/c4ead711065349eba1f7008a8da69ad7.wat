(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_1670441785 f64 (f64.const -3.6087250772763034e+17))
(global $global_3169073227 (mut i64) (i64.const -6578598600500938254))
(global $global_171651541 (mut i32) (i32.const -1208171558))
(func $run (export "run") (result f32)
    (local f64 i32 f64)
    (local $temp i32)
    global.get $global_1670441785
    i32.const 9
    loop $b_loop_1044514835 (param i32)
        nop
        (f64.const 1.0908119843874643e+260)
        f64.floor
        f64.floor
        drop
        global.get $global_1670441785
        (i32.const -388063)
        drop
        f64.ceil
        local.set 0
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_1044514835
        drop
    end
    (f64.const 3.9865561827834026e-146)
    f64.add
    drop
    (i64.const 5672575)
    f64.reinterpret_i64
    (i64.const -3)
    global.set $global_3169073227
    nop
    global.get $global_1670441785
    local.get 0
    f64.abs
    f64.ceil
    f64.le
    f32.convert_i32_s
    f32.trunc
    f32.trunc
    i32.trunc_f32_s
    f64.convert_i32_s
    f64.div
    f64.trunc
    (i32.const -8460182)
    (f64.const 4.1611831838286915e-44)
    local.set 0
    i32.extend8_s
    f32.convert_i32_u
    f32.floor
    i32.reinterpret_f32
    i32.extend16_s
    local.set 1
    (i64.const 5955132)
    i64.extend32_s
    i64.clz
    f64.convert_i64_u
    local.tee 2
    f64.ceil
    f64.le
    i32.extend8_s
    global.set $global_171651541
    global.get $global_1670441785
    f32.demote_f64
)

)