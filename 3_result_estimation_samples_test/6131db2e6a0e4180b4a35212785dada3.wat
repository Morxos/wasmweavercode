(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result i32)
    (local i64 f64 f64)
    (local $temp i32)
    i32.const 9
    loop $b_loop_929888560 (param i32)
        (i64.const -70)
        local.set 0
        (i64.const 6762493688248217418)
        i64.extend16_s
        i64.eqz
        i64.extend_i32_u
        drop
        (f64.const 4017550962926.1865)
        f64.neg
        f64.ceil
        local.tee 1
        f64.nearest
        local.tee 2
        i64.trunc_f64_s
        f32.convert_i64_s
        f64.promote_f32
        local.set 1
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_929888560
        drop
    end
    nop
    nop
    (i64.const 949654)
    f64.convert_i64_s
    i32.trunc_f64_s
)

)