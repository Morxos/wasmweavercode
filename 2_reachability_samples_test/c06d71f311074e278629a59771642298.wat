(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_4145780025 (mut i64) (i64.const -3412172191272756844))
(global $global_1130798838 (mut f64) (f64.const -4.754263889606588e+18))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_4
        nop
        global.get $global_4145780025
        f64.convert_i64_s
        (f64.const 8.216886110264468e-201)
        f64.copysign
        global.set $global_1130798838
    end

    ;;FLAG_1
    (i32.const -526)
    i64.extend_i32_s
    local.tee 0
    i32.wrap_i64
    (br_table 0)
    ;;FLAG_2
    local.get 0
    f64.convert_i64_s
    drop
    (i64.const -190977117)
    i32.wrap_i64
    i32.extend8_s
    i32.extend16_s
    (br_table 0)
    ;;FLAG_3
    (i64.const 5071)
    local.get 0
    i64.rem_s
    global.set $global_4145780025
)

)