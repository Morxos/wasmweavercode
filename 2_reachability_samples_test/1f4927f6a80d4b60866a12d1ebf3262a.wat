(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1576818895 (mut f64) (f64.const -6.550164285963346e+18))
(func $run (export "run")
    (local f64)
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_2
        global.get $global_1576818895
        global.get $global_1576818895
        f64.max
        f64.neg
        i64.trunc_f64_u
        (f64.const 2.803728929668977e-161)
        i64.trunc_f64_s
        i64.ge_s
        (br_table 1 0)
        ;;FLAG_3
    end

    ;;FLAG_1
    (f64.const 1.3909221630154388e+191)
    i64.reinterpret_f64
    drop
    (i32.const 736)
    (f64.const 2.944455720256889e-134)
    f32.demote_f64
    i32.reinterpret_f32
    i32.gt_u
    f64.convert_i32_u
    local.set 0
)

)