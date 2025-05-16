(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result f32)
    (local f32 i32)
    (local $temp i32)
    i32.const 9
    loop $b_loop_162978103 (param i32)
        (f32.const -2.5812368370449257e-37)
        local.set 0
        nop
        (i32.const -91108)
        i32.eqz
        local.set 1
        (i32.const 16)
        drop
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_162978103
        drop
    end
    (i32.const -8100385)
    i32.clz
    i64.extend_i32_s
    drop
    local.get 0
)

)