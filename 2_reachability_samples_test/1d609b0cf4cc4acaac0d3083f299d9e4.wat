(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f64 f32)
    (local $temp i32)
    ;;FLAG_0
    block
        (i64.const 4)
        i64.eqz
        i32.extend16_s
        i32.extend16_s
        i32.ctz
        (br_table 1 0)
        ;;FLAG_3
    end

    ;;FLAG_1
    nop
    (f32.const -2.345344682505695e+26)
    f32.neg
    f64.promote_f32
    f64.sqrt
    local.tee 0
    f32.demote_f64
    block (param f32)
        ;;FLAG_4
        f32.floor
        i32.reinterpret_f32
        i32.ctz
        f32.convert_i32_s
        local.set 1
    end

    ;;FLAG_2
)

)