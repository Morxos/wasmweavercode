(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2234048573 (mut i32) (i32.const -2063250521))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    ;;FLAG_0
    local.get 0
    drop
    (i32.const -70)
    global.set $global_2234048573
    nop
    (i64.const 699000206)
    block
        ;;FLAG_2
        (f64.const 2.7640909696061596e-180)
        drop
        local.get 0
        nop
        f64.convert_i64_u
        i64.trunc_f64_u
        drop
        (i64.const 237951)
        i32.wrap_i64
        i32.eqz
        (br_table 1 0)
        ;;FLAG_3
    end

    ;;FLAG_1
    (i64.const 5597)
    i64.ge_s
    drop
    nop
)

)