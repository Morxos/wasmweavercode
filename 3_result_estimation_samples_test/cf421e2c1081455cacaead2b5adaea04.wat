(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_2030050819 (mut f64) (f64.const 3.397969958227415e+17))
(func $run (export "run") (result f64)
    (local f64 f32)
    (local $temp i32)
    i32.const 9
    loop $b_loop_489250524 (param i32)
        (f64.const 6.528594715271975e+207)
        global.set $global_2030050819
        local.get 0
        f64.nearest
        local.get 0
        f64.lt
        i32.extend8_s
        f32.convert_i32_s
        f32.abs
        f32.nearest
        local.set 1
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_489250524
        drop
    end
    (i64.const 3570328)
    f64.convert_i64_s
    (i32.const 15951)
    i64.extend_i32_s
    (i32.const -202919)
    (i32.const 21)
    i32.rotr
    i64.extend_i32_s
    i64.mul
    nop
    i64.eqz
    (i32.const 269710796)
    i32.shl
    f64.convert_i32_u
    f64.ge
    i32.extend8_s
    i32.eqz
    f64.convert_i32_u
)

)