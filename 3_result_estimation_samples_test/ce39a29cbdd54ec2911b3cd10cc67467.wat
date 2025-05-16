(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_1605158074 (mut i32) (i32.const 936274617))
(func $run (export "run") (result f64)
    (local $temp i32)
    i32.const 9
    loop $b_loop_4021090130 (param i32)
        (i64.const -83334)
        f32.convert_i64_s
        drop
        nop
        (i32.const -5453557)
        global.set $global_1605158074
        global.get $global_1605158074
        global.get $global_1605158074
        i32.extend8_s
        i32.shl
        global.set $global_1605158074
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_4021090130
        drop
    end
    nop
    (f64.const 1.6451147857746402e+57)
    nop
    nop
)

)