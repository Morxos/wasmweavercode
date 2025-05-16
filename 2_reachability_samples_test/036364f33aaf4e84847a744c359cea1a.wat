(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2830714221 (mut i32) (i32.const -104817066))
(func $run (export "run")
    (local f32 i64)
    (local $temp i32)
    ;;FLAG_0
    global.get $global_2830714221
    i32.clz
    i64.extend_i32_s
    f32.convert_i64_u
    (i64.const 655)
    f64.convert_i64_u
    i64.trunc_f64_s
    block
        nop
        global.get $global_2830714221
        f64.convert_i32_u
        (f64.const 2.4335674894878465e+112)
        (i32.const -245623)
        f32.convert_i32_u
        local.tee 0
        i32.reinterpret_f32
        select
        i64.trunc_f64_u
        local.tee 1
        i32.wrap_i64
        (br_table 1 0)
        ;;FLAG_3
        global.get $global_2830714221
        (br_table 0 1)
        ;;FLAG_4
    end

    ;;FLAG_1
    i64.eqz
    f64.convert_i32_u
    i64.reinterpret_f64
    f64.convert_i64_s
    f32.demote_f64
    f32.le
    (br_table 0)
    ;;FLAG_2
)

)