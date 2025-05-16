(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1861448194 (mut i32) (i32.const -20062520))
(func $run (export "run")
    (local f32 i64)
    (local $temp i32)
    local.get 0
    f32.nearest
    f32.trunc
    f32.neg
    f32.neg
    f32.abs
    f32.ceil
    f32.trunc
    f32.neg
    i32.reinterpret_f32
    i32.extend8_s
    i64.extend_i32_s
    i64.eqz
    i32.extend8_s
    local.get 0
    f32.sqrt
    f32.ceil
    nop
    f32.trunc
    i32.reinterpret_f32
    i32.shr_s
    f64.convert_i32_u
    f64.trunc
    f32.demote_f64
    i64.trunc_f32_u
    local.tee 1
    i64.clz
    nop
    i64.popcnt
    f32.convert_i64_u
    f32.trunc
    f32.floor
    nop
    f32.nearest
    i64.trunc_f32_u
    f64.convert_i64_u
    ;;INSPECT
    f32.demote_f64
    i32.trunc_f32_u
    global.set $global_1861448194
)

)