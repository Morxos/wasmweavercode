(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f32 f32)
    (local $temp i32)
    ;;FLAG_0
    (i64.const 814115343)
    f32.convert_i64_s
    local.tee 0
    local.tee 1
    f64.promote_f32
    f64.abs
    f32.demote_f64
    f32.nearest
    i32.trunc_f32_u
    i32.clz
    (br_table 0)
    ;;FLAG_1
    local.get 0
    f32.neg
    i32.reinterpret_f32
    i32.ctz
    (br_table 0)
    ;;FLAG_2
    br 0
)

)