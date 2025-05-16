(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(table $tab_3248429171 3 funcref)
(global $global_871702186 (mut f32) (f32.const 5.30006605932213e+18))
(func $run (export "run")
    (local f64 f64 f64)
    (local $temp i32)
    local.get 0
    f64.trunc
    i64.reinterpret_f64
    i64.extend32_s
    f64.convert_i64_s
    local.tee 1
    f64.trunc
    i64.reinterpret_f64
    i64.eqz
    ;;INSPECT
    local.get 0
    f64.sqrt
    i64.reinterpret_f64
    f64.convert_i64_s
    i64.reinterpret_f64
    f64.reinterpret_i64
    f64.trunc
    f64.nearest
    local.tee 2
    i32.trunc_f64_u
    i32.shr_s
    i32.extend16_s
    global.get $global_871702186
    global.set $global_871702186
    f32.reinterpret_i32
    f32.trunc
    f32.trunc
    f32.sqrt
    i32.reinterpret_f32
    table.get $tab_3248429171
    drop
)

)