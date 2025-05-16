(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_4124958325 (mut f64) (f64.const 4.383956470587271e+18))
(func $run (export "run")
    (local f64)
    (local $temp i32)
    ;;FLAG_0
    block
        (i64.const -80537)
        i64.extend16_s
        f64.convert_i64_u
        f64.nearest
        local.set 0
        (f32.const 5.561866522896253e-09)
        f32.nearest
        i32.trunc_f32_u
        (br_table 0 1)
        ;;FLAG_2
        local.get 0
        local.get 0
        f64.le
        (br_table 1 0)
        ;;FLAG_3
        (i32.const 567940)
        (br_table 1 0)
        ;;FLAG_4
    end

    global.get $global_4124958325
    f64.sqrt
    i32.trunc_f64_s
    global.get $global_4124958325
    i64.trunc_f64_s
    i64.popcnt
    i64.extend8_s
    i64.clz
    i64.eqz
    i32.lt_u
    i32.clz
    (br_table 0)
    ;;FLAG_1
)

)