(module
(type $sig_function_1232025594 (func))
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(func $function_1232025594 (export "function_1232025594")
    (local i64)
    (local $temp i32)
    (i64.const -70761505)
    (f32.const 2368295665664.0)
    f32.trunc
    i64.trunc_f32_u
    i64.rotr
    local.set 0
)
(func $run (export "run") (result i32)
    (local f32 f64)
    (local $temp i32)
    (f32.const 9.346525905797116e+33)
    local.set 0
    (f64.const 1807374433397.3384)
    drop
    (f64.const 5.190927506079758e-122)
    i64.trunc_f64_s
    drop
    local.get 0
    f32.neg
    local.set 0
    (f32.const -3.690694575197995e-05)
    drop
    (f32.const -201904448.0)
    local.set 0
    (f32.const 4.328585327908644e-29)
    f32.abs
    f32.abs
    f64.promote_f32
    local.set 1
    (i64.const -18163)
    i64.extend32_s
    f64.reinterpret_i64
    call $function_1232025594
    drop
    (i32.const -1166901761)
)

)