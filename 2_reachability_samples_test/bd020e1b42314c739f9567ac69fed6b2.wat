(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i64 i64 f32 i32)
    (local $temp i32)
    ;;FLAG_0
    (i64.const -81767)
    i64.eqz
    f32.reinterpret_i32
    i32.trunc_f32_s
    i64.extend_i32_u
    (f32.const 430046592.0)
    i32.reinterpret_f32
    (i64.const -65)
    local.get 0
    i64.rotl
    i32.wrap_i64
    i32.rem_u
    (i64.const 48688716)
    local.tee 1
    i64.eqz
    i64.extend_i32_u
    f32.convert_i64_s
    local.set 2
    local.tee 3
    i64.extend_i32_u
    i64.eq
    i32.eqz
    (br_table 0)
    ;;FLAG_1
    br 0
)

)