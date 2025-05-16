(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_431254112 (mut f64) (f64.const -2.944147256680616e+18))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    ;;FLAG_0
    nop
    global.get $global_431254112
    i64.reinterpret_f64
    i64.popcnt
    f32.convert_i64_u
    i32.trunc_f32_s
    local.tee 0
    (br_table 0)
    ;;FLAG_1
    br 0
)

)