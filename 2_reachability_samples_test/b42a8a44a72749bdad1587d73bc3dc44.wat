(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1825272773 (mut i64) (i64.const -2956956486427887600))
(func $run (export "run")
    (local f32 i32)
    (local $temp i32)
    ;;FLAG_0
    (f32.const -3374.547119140625)
    i64.trunc_f32_s
    global.set $global_1825272773
    nop
    (f64.const 3.2434397776354614e-106)
    f64.trunc
    (f32.const -738335278497792.0)
    local.tee 0
    (i32.const -70)
    i32.extend8_s
    i32.clz
    i64.extend_i32_u
    i64.clz
    i64.extend32_s
    f32.convert_i64_u
    f32.le
    local.set 1
    drop
    (i32.const -739827)
    (br_table 0)
    ;;FLAG_1
)

)