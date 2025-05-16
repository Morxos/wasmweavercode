(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_553222666 (mut i64) (i64.const 6241802317412705016))
(global $global_3573458725 (mut i32) (i32.const -119699598))
(global $global_3153351774 (mut f32) (f32.const -2.815401502623924e+18))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    global.get $global_553222666
    (i64.const 1)
    block (param i64) (result f64)
        ;;FLAG_2
        drop
        (i32.const 41751)
        i32.clz
        i32.clz
        i32.extend8_s
        f64.convert_i32_u
    end

    ;;FLAG_1
    i32.trunc_f64_u
    i32.ctz
    i32.ctz
    f32.reinterpret_i32
    i32.trunc_f32_u
    global.set $global_3573458725
    f32.convert_i64_s
    global.set $global_3153351774
    nop
    br 0
)

)