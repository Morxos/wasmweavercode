(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3654798077 (mut i64) (i64.const 8332983043541319854))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    ;;FLAG_0
    (i64.const 4696324)
    f32.convert_i64_s
    local.set 0
    global.get $global_3654798077
    f64.reinterpret_i64
    i64.reinterpret_f64
    i32.wrap_i64
    (br_table 0)
    ;;FLAG_1
    (i32.const 65)
    (br_table 0)
    ;;FLAG_2
    (f64.const 2.7774607767442724e-307)
    f64.ceil
    i64.trunc_f64_s
    i64.eqz
    (br_table 0)
    ;;FLAG_3
    nop
    local.get 0
    drop
    br 0
)

)