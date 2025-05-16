(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_349276193 (mut i64) (i64.const -3331031917781710962))
(global $global_992577214 (mut f64) (f64.const 6.135782196294455e+18))
(func $run (export "run") (result i32)
    (local f32 i64)
    (local $temp i32)
    i32.const 9
    loop $b_loop_2595486037 (param i32)
        (i64.const 3176069130710518841)
        drop
        global.get $global_349276193
        drop
        local.get 0
        i64.trunc_f32_s
        local.set 1
        (i64.const -81612)
        drop
        (f64.const 1.5457991106001312e+230)
        drop
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_2595486037
        drop
    end
    (f32.const -7.204575229769679e+18)
    local.set 0
    (f64.const 1.2765166573532154e-73)
    global.set $global_992577214
    (i64.const -5167058710343549504)
    (i64.const -36643205)
    i64.ne
)

)