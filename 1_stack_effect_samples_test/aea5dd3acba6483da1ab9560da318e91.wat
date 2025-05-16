(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_260865164 (mut i32) (i32.const -1811791832))
(func $run (export "run")
    (local f32 i32)
    (local $temp i32)
    local.get 0
    ;;INSPECT
    local.get 0
    f32.ceil
    f32.min
    f32.sqrt
    i32.trunc_f32_u
    f32.convert_i32_s
    i64.trunc_f32_u
    i64.extend32_s
    (f32.const -4.5882419391629625e-11)
    f32.ceil
    i32.reinterpret_f32
    i32.eqz
    i32.extend8_s
    f32.convert_i32_s
    i64.trunc_f32_u
    i64.shl
    i64.clz
    i64.popcnt
    f64.convert_i64_u
    f64.trunc
    i64.trunc_f64_u
    f64.convert_i64_s
    f32.demote_f64
    f32.sqrt
    f32.trunc
    i32.reinterpret_f32
    nop
    local.tee 1
    global.set $global_260865164
)

)