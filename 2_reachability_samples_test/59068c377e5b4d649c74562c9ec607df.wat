(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1473132750 (mut i32) (i32.const 1802833571))
(global $global_4195142960 (mut i64) (i64.const 3605160796973243119))
(func $run (export "run")
    (local i32 f64)
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_3
        (i32.const 39)
        i32.extend8_s
        local.set 0
        global.get $global_1473132750
        global.set $global_1473132750
        br 0
    end

    ;;FLAG_1
    (f64.const 4.3160810478261925e-88)
    local.set 1
    nop
    (i64.const 73)
    global.set $global_4195142960
    local.get 0
    (br_table 0)
    ;;FLAG_2
    br 0
)

)