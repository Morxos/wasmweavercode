(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2006238568 (mut i32) (i32.const 103672776))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    nop
    global.get $global_2006238568
    i32.extend8_s
    i32.extend16_s
    f32.reinterpret_i32
    i32.reinterpret_f32
    (br_table 0)
    ;;FLAG_1
    br 0
)

)