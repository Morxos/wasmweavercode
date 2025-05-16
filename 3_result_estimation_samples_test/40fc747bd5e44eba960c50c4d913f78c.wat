(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_3047058792 (mut i32) (i32.const -1459280974))
(func $run (export "run") (result f64)
    (local f64 i64 f32 i32 i64)
    (local $temp i32)
    i32.const 9
    loop $b_loop_1876682930 (param i32)
        (f64.const 5.0108975488445916e-192)
        local.set 0
        (f32.const 7110.05859375)
        i64.trunc_f32_s
        local.set 1
        (f32.const 3.3001659354352915e+32)
        local.set 2
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_1876682930
        drop
    end
    global.get $global_3047058792
    local.get 0
    f64.neg
    f64.neg
    local.set 0
    (f64.const 9.364271603675306e-145)
    f64.floor
    f64.sqrt
    i64.trunc_f64_u
    i64.ctz
    local.set 1
    f64.convert_i32_u
    f32.demote_f64
    (i64.const -9682240)
    f64.reinterpret_i64
    (f64.const 6.027651944097169e-190)
    f64.ge
    local.get 0
    local.get 0
    f64.ge
    i32.shl
    f32.convert_i32_u
    f64.promote_f32
    i32.trunc_f64_u
    local.tee 3
    local.set 3
    i64.trunc_f32_u
    local.tee 4
    f64.reinterpret_i64
)

)