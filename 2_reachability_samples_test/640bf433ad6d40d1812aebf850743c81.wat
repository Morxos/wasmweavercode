(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3124165847 (mut i64) (i64.const 732011869339080229))
(func $run (export "run")
    (local f32 i64)
    (local $temp i32)
    ;;FLAG_0
    local.get 0
    f32.nearest
    i32.reinterpret_f32
    (f32.const 1.873374123761955e+20)
    f32.sqrt
    drop
    local.get 0
    i32.reinterpret_f32
    i32.extend16_s
    drop
    i32.eqz
    nop
    (br_table 0)
    ;;FLAG_1
    nop
    nop
    global.get $global_3124165847
    local.set 1
    br 0
)

)