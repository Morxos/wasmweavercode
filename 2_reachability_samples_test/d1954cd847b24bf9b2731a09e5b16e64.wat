(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_184465617 i64 (i64.const -3552598030048863256))
(global $global_4271961079 (mut f64) (f64.const -2.738099757281417e+18))
(func $run (export "run")
    (local f32 f64)
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_3
        global.get $global_184465617
        i64.extend8_s
        nop
        i64.clz
        i64.eqz
        (br_table 0 1)
        ;;FLAG_4
    end

    ;;FLAG_1
    (f64.const 1.2100747072731463e-13)
    f64.ceil
    i64.reinterpret_f64
    drop
    local.get 0
    f64.promote_f32
    f32.demote_f64
    (f32.const 2.814950867620344e-30)
    f32.gt
    nop
    f32.reinterpret_i32
    (i64.const 166)
    i64.extend8_s
    f64.convert_i64_u
    local.tee 1
    global.set $global_4271961079
    i32.trunc_f32_u
    i32.clz
    (br_table 0)
    ;;FLAG_2
    global.get $global_184465617
    f32.convert_i64_s
    (f32.const 4.0284738078904265e-17)
    f32.ceil
    f32.ge
    (br_table 0)
)

)