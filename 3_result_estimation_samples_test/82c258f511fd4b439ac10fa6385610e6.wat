(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_51308061 (mut i32) (i32.const -1366309965))
(func $run (export "run") (result i32)
    (local f32 i32)
    (local $temp i32)
    (i64.const -9580813)
    i32.wrap_i64
    f64.convert_i32_u
    i32.const 9
    loop $b_loop_2109513895 (param i32)
        global.get $global_51308061
        i64.extend_i32_s
        i64.extend8_s
        i64.extend32_s
        i32.wrap_i64
        (f64.const 1.047929641051687e-196)
        i32.trunc_f64_u
        i32.rotl
        i32.eqz
        f32.convert_i32_u
        f32.abs
        local.set 0
        global.get $global_51308061
        local.set 1
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_2109513895
        drop
    end
    f64.neg
    i64.trunc_f64_s
    (f64.const 2.572765801804171e+268)
    drop
    i32.wrap_i64
)

)