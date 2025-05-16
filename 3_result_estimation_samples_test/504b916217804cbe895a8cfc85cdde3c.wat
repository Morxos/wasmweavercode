(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_3086612990 (mut i64) (i64.const -3404875671333876823))
(func $run (export "run") (result f32)
    (local f32 i32)
    (local $temp i32)
    i32.const 9
    loop $b_loop_2802669071 (param i32)
        (i32.const 835539)
        f32.convert_i32_u
        local.set 0
        local.get 0
        local.set 0
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_2802669071
        drop
    end
    global.get $global_3086612990
    i64.ctz
    i32.wrap_i64
    local.set 1
    nop
    (i32.const 4)
    local.set 1
    (f32.const 9.140265319729224e-06)
    f32.ceil
)

)