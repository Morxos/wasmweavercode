(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1267608820 (mut i64) (i64.const 8225446497414148055))
(func $run (export "run")
    (local i64 i32)
    (local $temp i32)
    ;;FLAG_0
    nop
    (i64.const -8643)
    local.get 0
    i64.ge_u
    local.tee 1
    f32.convert_i32_s
    i32.reinterpret_f32
    f32.convert_i32_u
    f32.abs
    f64.promote_f32
    i64.trunc_f64_s
    f32.convert_i64_u
    i32.reinterpret_f32
    (br_table 0)
    ;;FLAG_1
    (i64.const 2678747275406580181)
    (i64.const -24109957)
    i64.mul
    global.set $global_1267608820
    (i32.const -86646411)
    (br_table 0)
    ;;FLAG_2
    (i32.const -48)
    (i32.const 1571312)
    i32.lt_u
    i64.extend_i32_u
    global.get $global_1267608820
    i64.rem_s
    drop
)

)