(module
(type $sig_function_1559339382 (func))
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3998068018 (mut f64) (f64.const -6.029594344853858e+18))
(func $function_1559339382 (export "function_1559339382")
    (local i64)
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_2
        local.get 0
        global.get $global_3998068018
        (f64.const 4.2936211851307576e+288)
        f32.demote_f64
        f64.promote_f32
        f64.mul
        f64.trunc
        drop
        drop
    end

    ;;FLAG_1
    (f64.const 1.4328176497885148e+38)
    global.set $global_3998068018
    (i64.const 766825)
    drop
)
(func $run (export "run")
    (local f64 f32)
    (local $temp i32)
    ;;FLAG_3
    (i64.const 885915859)
    call $function_1559339382
    global.get $global_3998068018
    local.set 0
    i64.ctz
    i64.extend8_s
    i64.eqz
    (f32.const -7.603995336943858e-38)
    local.set 1
    (br_table 0)
    ;;FLAG_4
)

)