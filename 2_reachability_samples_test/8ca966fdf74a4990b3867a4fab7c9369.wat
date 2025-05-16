(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i64 i32 f64)
    (local $temp i32)
    ;;FLAG_0
    (f32.const 1.0692487322440158e-16)
    f32.neg
    local.get 0
    (f64.const 2.05842061242924e+28)
    f64.ceil
    i64.reinterpret_f64
    i64.or
    i32.wrap_i64
    f32.convert_i32_u
    (i32.const -6)
    local.set 1
    f32.trunc
    f32.gt
    f64.convert_i32_u
    i64.trunc_f64_u
    block (param i64)
        ;;FLAG_2
        f64.convert_i64_s
        drop
        local.get 0
        local.get 0
        i64.rotl
        f32.convert_i64_u
        drop
        br 0
    end

    ;;FLAG_1
    (f64.const 1.603826041443935e+111)
    f64.ceil
    local.set 2
)

)