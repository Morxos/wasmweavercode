(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(table $tab_4060698030 7 funcref)
(global $global_620396132 i64 (i64.const 783085112206575832))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    local.get 0
    ;;INSPECT
    f32.convert_i32_u
    f32.nearest
    f32.nearest
    f32.abs
    i64.trunc_f32_u
    i64.eqz
    (f32.const -8.149878687102135e-36)
    f32.ceil
    i64.trunc_f32_s
    i64.extend32_s
    i64.extend32_s
    i64.clz
    i64.clz
    i64.clz
    f32.convert_i64_u
    f32.trunc
    f32.abs
    f32.ceil
    i32.trunc_f32_u
    i32.shr_s
    i32.eqz
    f64.convert_i32_u
    i64.trunc_f64_s
    global.get $global_620396132
    i64.rem_s
    i32.wrap_i64
    table.get $tab_4060698030
    drop
)

)