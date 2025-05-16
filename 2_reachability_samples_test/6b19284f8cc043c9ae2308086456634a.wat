(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    ;;FLAG_0
    (f32.const 7.964432143748666e-26)
    f32.sqrt
    f32.floor
    i32.reinterpret_f32
    local.set 0
    local.get 0
    i64.extend_i32_s
    f64.convert_i64_u
    f64.nearest
    i64.trunc_f64_u
    i64.extend8_s
    i32.wrap_i64
    (br_table 0)
    ;;FLAG_1
    local.get 0
    (br_table 0)
    ;;FLAG_2
    br 0
)

)