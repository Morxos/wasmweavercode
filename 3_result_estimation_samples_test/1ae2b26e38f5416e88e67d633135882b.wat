(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result f32)
    (local i32)
    (local $temp i32)
    (i64.const -7014807284520820631)
    local.get 0
    i32.extend16_s
    drop
    block
        nop
        nop
        (i64.const 3)
        drop
        nop
    end

    drop
    (i32.const 793077896)
    (i32.const -6600996)
    i32.clz
    i32.shl
    f32.convert_i32_u
)

)