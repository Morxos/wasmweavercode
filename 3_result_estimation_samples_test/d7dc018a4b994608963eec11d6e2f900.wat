(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_916146660 (mut f64) (f64.const -2.318027601596922e+18))
(func $run (export "run") (result i64)
    (local f32 f64 i32)
    (local $temp i32)
    i32.const 9
    loop $b_loop_3492144843 (param i32)
        global.get $global_916146660
        (f32.const 6.380190627110654e-29)
        local.set 0
        f64.nearest
        local.set 1
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_3492144843
        drop
    end
    (f32.const -1.997419984321195e-32)
    f32.trunc
    i32.trunc_f32_u
    local.set 2
    (f64.const 1.4578856476722716e+16)
    i64.trunc_f64_u
)

)