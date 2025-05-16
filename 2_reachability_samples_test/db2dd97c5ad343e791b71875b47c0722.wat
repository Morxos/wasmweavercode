(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1022400979 (mut i32) (i32.const 23543192))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    ;;FLAG_0
    global.get $global_1022400979
    (i64.const 3430)
    global.get $global_1022400979
    i64.extend_i32_u
    f32.convert_i64_s
    i32.trunc_f32_s
    f32.reinterpret_i32
    global.get $global_1022400979
    local.tee 0
    (i64.const -5898269407284073225)
    (i64.const -5937622255372406992)
    i64.eq
    i32.shr_s
    local.set 0
    i32.trunc_f32_s
    i64.extend_i32_u
    i64.eq
    i32.shr_s
    (br_table 0)
    ;;FLAG_1
    br 0
)

)