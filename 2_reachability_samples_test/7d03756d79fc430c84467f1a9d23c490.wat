(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_4058552060 (mut i64) (i64.const 5266950288491716760))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    ;;FLAG_0
    (i64.const 5072948)
    i64.extend16_s
    nop
    global.set $global_4058552060
    (f64.const 1.2505796113548102e-234)
    i64.reinterpret_f64
    i64.eqz
    (br_table 0)
    ;;FLAG_1
    (f32.const -0.0068403491750359535)
    i32.reinterpret_f32
    (br_table 0)
    ;;FLAG_2
    local.get 0
    (br_table 0)
    ;;FLAG_3
    global.get $global_4058552060
    f32.convert_i64_u
    i32.trunc_f32_u
    (br_table 0)
    ;;FLAG_4
    return
)

)