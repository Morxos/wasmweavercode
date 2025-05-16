(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i64 f64)
    (local $temp i32)
    block
        ;;FLAG_2
        block
            ;;FLAG_4
            (i64.const 39153)
            local.tee 0
            f32.convert_i64_u
            f64.promote_f32
            i64.reinterpret_f64
            local.set 0
        end

        local.get 0
        i64.eqz
        f64.convert_i32_u
        i32.trunc_f64_s
        (br_table 0 1)
        ;;FLAG_3
    end

    ;;FLAG_0
    (f32.const 1.106217339952309e-10)
    (f64.const 6.332196652394011e-32)
    local.set 1
    i32.trunc_f32_u
    (br_table 0)
    ;;FLAG_1
    br 0
)

)