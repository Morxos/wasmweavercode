(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i64 f32 f64)
    (local $temp i32)
    ;;FLAG_0
    (f64.const 1.0609432834432911e+301)
    (i64.const -2739922064637530904)
    f32.convert_i64_s
    local.get 0
    (f64.const 2.4025675183593207e-49)
    f64.nearest
    i64.reinterpret_f64
    i64.ge_s
    f64.convert_i32_s
    i64.reinterpret_f64
    i64.ctz
    (i64.const 496)
    i64.shr_s
    i64.extend8_s
    local.set 0
    local.set 1
    nop
    local.tee 2
    f32.demote_f64
    f32.sqrt
    f32.ceil
    f32.trunc
    f32.nearest
    f32.ceil
    f32.trunc
    i32.reinterpret_f32
    (i32.const -100)
    i32.shr_s
    i32.extend16_s
    (br_table 0)
    ;;FLAG_1
)

)