(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_657741419 (mut f32) (f32.const 5.967427286184493e+18))
(func $run (export "run")
    (local i32 i32)
    (local $temp i32)
    (f32.const -693253898240.0)
    (i32.const 5)
    local.set 0
    (i32.const -1774009776)
    i32.eqz
    i32.extend16_s
    i64.extend_i32_s
    i64.extend16_s
    f64.convert_i64_u
    f64.sqrt
    drop
    f32.nearest
    i32.reinterpret_f32
    f32.reinterpret_i32
    drop
    local.get 0
    (f32.const -1.4703388506731585e-09)
    nop
    global.set $global_657741419
    i64.extend_i32_s
    f64.convert_i64_s
    f32.demote_f64
    f32.floor
    f32.trunc
    i32.reinterpret_f32
    f32.convert_i32_s
    f64.promote_f32
    ;;INSPECT
    i32.trunc_f64_u
    local.tee 1
    f32.convert_i32_s
    global.set $global_657741419
)

)