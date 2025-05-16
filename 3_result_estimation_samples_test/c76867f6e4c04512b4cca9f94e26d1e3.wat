(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result i64)
    (local f64 f64 f32)
    (local $temp i32)
    local.get 0
    local.set 0
    i32.const 9
    loop $b_loop_1667438922 (param i32)
        (i64.const 472)
        f64.reinterpret_i64
        local.tee 1
        f64.sqrt
        f64.abs
        local.set 0
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_1667438922
        drop
    end
    (f32.const -8.078191260396452e-24)
    drop
    (f32.const 4.787546163086756e+36)
    i32.reinterpret_f32
    f32.convert_i32_s
    local.set 2
    nop
    (i64.const 7110)
)

)