(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_1306425542 (mut i32) (i32.const 1629338345))
(global $global_3604918321 (mut f32) (f32.const 7.164688246448849e+18))
(func $run (export "run") (result f32)
    (local i32 i64 i64 f32)
    (local $temp i32)
    (i64.const -641123970810822781)
    i64.eqz
    f64.convert_i32_s
    (i32.const 94694)
    i32.clz
    local.set 0
    f64.sqrt
    (f32.const -2.2373241636189687e+23)
    drop
    i32.trunc_f64_u
    i32.clz
    i32.popcnt
    global.set $global_1306425542
    (i64.const -610605549)
    (f32.const -2272376832.0)
    f32.neg
    drop
    (f32.const 6.020580084822869e-13)
    f32.sqrt
    f64.promote_f32
    f64.trunc
    i32.trunc_f64_u
    i64.extend_i32_u
    i64.shr_s
    i64.extend8_s
    (i64.const -8750)
    i64.div_s
    (f32.const 292249984.0)
    global.set $global_3604918321
    local.tee 1
    f64.reinterpret_i64
    (i32.const 599)
    i64.extend_i32_u
    f32.convert_i64_u
    drop
    drop
    i32.const 9
    loop $b_loop_4174362665 (param i32)
        (i32.const 873588484)
        i32.ctz
        global.set $global_1306425542
        local.get 0
        global.set $global_1306425542
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_4174362665
        drop
    end
    nop
    nop
    (i64.const -65935712)
    i64.extend8_s
    drop
    (i64.const 4075002)
    local.tee 2
    global.get $global_1306425542
    f32.convert_i32_s
    local.set 3
    i32.wrap_i64
    i32.clz
    i32.clz
    drop
    (f32.const 4.649747909203133e+21)
)

)