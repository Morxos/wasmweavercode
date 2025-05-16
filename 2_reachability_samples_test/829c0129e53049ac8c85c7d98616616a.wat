(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_4215800579 (mut i64) (i64.const 6719418166283160919))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_2
        (i32.const 35)
        f64.convert_i32_u
        f64.nearest
        i64.trunc_f64_u
        i32.wrap_i64
        (br_table 1 0)
        ;;FLAG_3
    end

    ;;FLAG_1
    nop
    (i64.const -848838)
    i64.ctz
    global.set $global_4215800579
    br 0
)

)