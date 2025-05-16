(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_3061124178 (mut f32) (f32.const -2.7764708195413524e+18))
(func $run (export "run") (result i64)
    (local $temp i32)
    (i32.const 1721473638)
    (i64.const -4562963757734031384)
    global.get $global_3061124178
    i32.const 9
    loop $b_loop_532395168 (param i32)
        (f64.const 7.967737368323864e+305)
        drop
        global.get $global_3061124178
        nop
        drop
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_532395168
        drop
    end
    f64.promote_f32
    f64.ceil
    f32.demote_f64
    i64.trunc_f32_s
    i64.rem_s
    f64.reinterpret_i64
    f64.neg
    (f64.const 5.681013280418605e-267)
    f64.gt
    i32.rotl
    i32.clz
    i32.clz
    (f64.const 7.434139552314907e+272)
    f64.floor
    f64.floor
    f64.floor
    f64.trunc
    f64.floor
    drop
    i32.eqz
    i32.ctz
    i64.extend_i32_u
)

)