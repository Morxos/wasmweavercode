(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2544461827 (mut i64) (i64.const -7391102832432545383))
(func $run (export "run")
    (local i64 i32)
    (local $temp i32)
    ;;FLAG_0
    (f64.const 9.017284176540448e-184)
    i64.trunc_f64_u
    i64.clz
    global.set $global_2544461827
    local.get 0
    f64.convert_i64_u
    f64.floor
    i32.trunc_f64_u
    (br_table 0)
    ;;FLAG_1
    global.get $global_2544461827
    f32.convert_i64_u
    f64.promote_f32
    nop
    f64.ceil
    (i32.const -370525676)
    drop
    (f64.const 5.970654190664831e-145)
    f64.le
    local.tee 1
    (br_table 0)
    ;;FLAG_2
    nop
    (i64.const 855716199)
    local.set 0
)

)