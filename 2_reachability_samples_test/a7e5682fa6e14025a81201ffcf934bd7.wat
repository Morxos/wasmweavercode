(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f32 i32)
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_3
        (f64.const 5.4286729531649133e+191)
        i64.reinterpret_f64
        f64.convert_i64_s
        f32.demote_f64
        local.tee 0
        f32.nearest
        i64.trunc_f32_u
        i64.eqz
        (br_table 0 1)
        ;;FLAG_4
    end

    ;;FLAG_1
    (i32.const 6194)
    local.tee 1
    nop
    i64.extend_i32_s
    (f64.const 3.9730184221086966e+254)
    i64.reinterpret_f64
    i64.eq
    br_if 0
    ;;FLAG_2
    br 0
)

)