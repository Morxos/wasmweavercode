(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_4158791689 (mut i32) (i32.const -2016225677))
(global $global_3829165281 (mut f32) (f32.const -4.5912931013891195e+18))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    ;;FLAG_0
    block
        nop
        global.get $global_4158791689
        (i32.const -81377)
        i32.shr_u
        f32.convert_i32_u
        global.set $global_3829165281
    end

    ;;FLAG_1
    (i64.const -652470202)
    global.get $global_4158791689
    local.set 0
    drop
    (i32.const 8339088)
    (br_table 0)
    ;;FLAG_2
    global.get $global_4158791689
    (br_table 0)
    ;;FLAG_3
    global.get $global_4158791689
    (br_table 0)
    ;;FLAG_4
    return
)

)