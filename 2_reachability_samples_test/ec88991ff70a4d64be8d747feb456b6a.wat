(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    block
        nop
        (i64.const 665929773)
        block (param i64)
            ;;FLAG_2
            local.set 0
            (i64.const 1553589751869543178)
            (i32.const -885984)
            i32.ctz
            i32.clz
            i32.extend8_s
            i64.extend_i32_u
            i64.eq
            (br_table 2 0 1)
            ;;FLAG_3
        end

        ;;FLAG_0
        local.get 0
        i64.eqz
        (br_table 1 0)
        ;;FLAG_1
        br 0
        return
    end

    block
        ;;FLAG_4
        (f32.const -25139193856.0)
        drop
        (i64.const -434)
        i64.ctz
        drop
    end

    local.get 0
    i64.eqz
    i64.extend_i32_s
    i64.clz
    i64.extend16_s
    f32.convert_i64_s
    i32.trunc_f32_u
    (br_table 0)
)

)