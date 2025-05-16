(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_923737932 (mut i64) (i64.const 5288014206503819921))
(global $global_1847166078 (mut f32) (f32.const -5.75404726360526e+18))
(func $run (export "run") (result f64)
    (local i64 f64 f32)
    (local $temp i32)
    i32.const 9
    loop $b_loop_3439848605 (param i32)
        (i32.const -70584677)
        global.get $global_923737932
        i64.clz
        drop
        (i64.const -6528)
        i64.extend8_s
        local.set 0
        f32.reinterpret_i32
        f32.neg
        nop
        nop
        global.set $global_1847166078
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_3439848605
        drop
    end
    (i32.const -4292533)
    i32.eqz
    f64.convert_i32_s
    local.set 1
    global.get $global_923737932
    local.get 0
    i64.or
    drop
    (f32.const -1074652759719936.0)
    i64.trunc_f32_s
    f32.convert_i64_u
    local.set 2
    (f64.const 1.8224545338295563e+82)
)

)