(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_113366173 (mut f32) (f32.const -3.251040104176681e+18))
(func $run (export "run")
    (local i64 i32)
    (local $temp i32)
    local.get 0
    f64.convert_i64_s
    f32.demote_f64
    f32.trunc
    f32.floor
    i64.trunc_f32_s
    i64.clz
    f32.convert_i64_u
    i32.reinterpret_f32
    local.set 1
    ;;INSPECT
    local.get 0
    i64.extend8_s
    i64.eqz
    i32.clz
    i32.clz
    i32.clz
    i32.clz
    f32.convert_i32_u
    i32.reinterpret_f32
    f32.convert_i32_s
    global.set $global_113366173
)

)