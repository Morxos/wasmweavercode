(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_4028584008 (mut f32) (f32.const 8.501168269510574e+18))
(global $global_2400073929 (mut i32) (i32.const -45998250))
(func $run (export "run") (result f32)
    (local i32)
    (local $temp i32)
    i32.const 9
    loop $b_loop_2206549268 (param i32)
        (i32.const -472907)
        local.set 0
        (i64.const -41669)
        f32.convert_i64_u
        global.set $global_4028584008
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_2206549268
        drop
    end
    local.get 0
    nop
    f32.convert_i32_u
    (i32.const 1)
    br_if 0
    global.set $global_4028584008
    (i32.const 99600)
    i64.extend_i32_u
    i32.wrap_i64
    global.set $global_2400073929
    global.get $global_4028584008
    (f32.const 3.894144406090638e+34)
    f32.gt
    i32.eqz
    local.get 0
    i32.shl
    i64.extend_i32_s
    f32.convert_i64_s
)

)