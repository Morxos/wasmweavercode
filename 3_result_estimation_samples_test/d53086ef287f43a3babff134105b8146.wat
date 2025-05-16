(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_3609038792 (mut i64) (i64.const -4096262574194354733))
(global $global_2921301039 (mut i32) (i32.const 643412698))
(global $global_3251713503 (mut f64) (f64.const -4.84191544982885e+18))
(func $run (export "run") (result f64)
    (local f64 f32 i64)
    (local $temp i32)
    global.get $global_3609038792
    f64.convert_i64_s
    local.set 0
    nop
    nop
    (i64.const -2)
    global.set $global_3609038792
    (i32.const -46451541)
    (f64.const 1.7075164508494103e-230)
    f64.nearest
    i64.trunc_f64_s
    f64.reinterpret_i64
    f64.sqrt
    i64.trunc_f64_s
    f32.convert_i64_s
    f32.neg
    local.set 1
    i32.clz
    i64.extend_i32_u
    local.get 0
    i64.trunc_f64_s
    i64.rem_u
    drop
    (i64.const -737835)
    local.set 2
    i32.const 9
    loop $b_loop_1534871291 (param i32)
        (f32.const 59113.94140625)
        f32.abs
        i32.trunc_f32_s
        global.set $global_2921301039
        local.get 0
        global.set $global_3251713503
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_1534871291
        drop
    end
    (f64.const 1.0065940053900214e-59)
)

)