(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3903641926 (mut i64) (i64.const -3315859272853768096))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_3
        (i64.const 2085724571598136078)
        local.set 0
        local.get 0
        i64.extend8_s
        global.set $global_3903641926
        nop
    end

    ;;FLAG_1
    (f64.const 1.1438985856780631e-134)
    i64.trunc_f64_s
    i64.extend16_s
    (i64.const 58027)
    i64.eq
    (br_table 0)
    ;;FLAG_2
    br 0
)

)