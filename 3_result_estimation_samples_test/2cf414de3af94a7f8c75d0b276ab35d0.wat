(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_4134233685 (mut f32) (f32.const -3.1529611930778993e+18))
(global $global_807730013 (mut i32) (i32.const 1676937339))
(func $run (export "run") (result f32)
    (local i32 i64 f32)
    (local $temp i32)
    (i32.const -100)
    local.set 0
    (i64.const -79349)
    local.tee 1
    f64.convert_i64_s
    (i64.const 0)
    i64.eqz
    i64.extend_i32_s
    (f32.const 3.6421772986895e-15)
    global.get $global_4134233685
    f32.min
    f32.abs
    f64.promote_f32
    f64.floor
    f64.sqrt
    nop
    i32.trunc_f64_s
    i64.extend_i32_u
    i64.or
    (i64.const -3990467942319116555)
    i64.rem_u
    drop
    i64.reinterpret_f64
    i32.const 9
    loop $b_loop_3628139291 (param i32)
        (i32.const 8288941)
        i32.clz
        global.set $global_807730013
        local.get 0
        global.set $global_807730013
        (i32.const 3937024)
        f32.convert_i32_u
        local.set 2
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_3628139291
        drop
    end
    (i32.const -331179)
    local.set 0
    i64.extend16_s
    local.set 1
    global.get $global_4134233685
)

)