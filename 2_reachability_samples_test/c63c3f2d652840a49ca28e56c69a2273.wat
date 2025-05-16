(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3235720078 i64 (i64.const 8609092115200108683))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    nop
    global.get $global_3235720078
    i64.extend32_s
    f32.convert_i64_s
    i32.reinterpret_f32
    i32.extend16_s
    (br_table 0)
    ;;FLAG_1
    br 0
)

)