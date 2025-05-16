(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1041224697 (mut i32) (i32.const 2033707565))
(func $run (export "run")
    (local i64 i32)
    (local $temp i32)
    ;;FLAG_0
    (i64.const -41099)
    f64.convert_i64_s
    f32.demote_f64
    i32.reinterpret_f32
    f32.convert_i32_s
    f32.abs
    (i32.const 116467839)
    i32.eqz
    global.set $global_1041224697
    i32.reinterpret_f32
    (br_table 0)
    ;;FLAG_1
    block
        ;;FLAG_3
        (i64.const -6200589)
        (i64.const -6582481662008920736)
        local.tee 0
        i64.gt_s
        local.set 1
        (i64.const -69)
        local.set 0
    end

    ;;FLAG_2
    return
)

)