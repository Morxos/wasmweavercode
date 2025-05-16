(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_4174839912 (mut i32) (i32.const 2007790468))
(func $run (export "run") (result f32)
    (local i32)
    (local $temp i32)
    i32.const 9
    loop $b_loop_3733447664 (param i32)
        (i32.const 6557)
        i32.ctz
        (i32.const 65)
        (i32.const -7145)
        i32.shl
        i32.shl
        global.set $global_4174839912
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_3733447664
        drop
    end
    nop
    (i32.const 45946087)
    local.set 0
    (f32.const 2.1525498196236698e+17)
)

)