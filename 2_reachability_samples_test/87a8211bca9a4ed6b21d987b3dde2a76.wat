(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1507911860 (mut f32) (f32.const -2.375721920961184e+18))
(global $global_898367839 (mut i32) (i32.const -1524804757))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    ;;FLAG_0
    nop
    (f32.const -2.0693905099220413e-29)
    (i32.const -69743)
    i32.eqz
    global.get $global_1507911860
    f32.ceil
    local.set 0
    global.set $global_898367839
    i32.reinterpret_f32
    (br_table 0)
    ;;FLAG_1
    (i32.const 1525646592)
    (br_table 0)
    ;;FLAG_2
    (i32.const 165)
    (br_table 0)
    ;;FLAG_3
    br 0
)

)