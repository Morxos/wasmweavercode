(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1105614491 (mut i64) (i64.const -7782972604853983022))
(global $global_3027136216 (mut i32) (i32.const 1404365655))
(func $run (export "run")
    (local i32 f32 f64 f32)
    (local $temp i32)
    local.get 0
    f32.reinterpret_i32
    f32.ceil
    local.tee 1
    i64.trunc_f32_s
    i64.clz
    i64.eqz
    local.get 0
    i32.shr_s
    f64.convert_i32_s
    f32.demote_f64
    local.get 0
    i32.ctz
    f64.convert_i32_s
    f64.sqrt
    local.tee 2
    f64.sqrt
    i64.trunc_f64_u
    f32.convert_i64_u
    f32.sqrt
    f32.ceil
    local.tee 3
    i64.trunc_f32_u
    i64.eqz
    i64.extend_i32_s
    f64.convert_i64_s
    f64.sqrt
    ;;INSPECT
    f64.abs
    i64.reinterpret_f64
    (i64.const 3146511)
    i64.add
    global.set $global_1105614491
    i64.trunc_f32_u
    i32.wrap_i64
    global.set $global_3027136216
)

)