(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3733789852 (mut i32) (i32.const -1819839760))
(func $run (export "run")
    (local f64 f32)
    (local $temp i32)
    local.get 0
    i64.trunc_f64_s
    i64.clz
    i64.popcnt
    f32.convert_i64_u
    (f32.const 3.0836347121050924e-36)
    f32.min
    i64.trunc_f32_u
    f32.convert_i64_u
    f32.floor
    f32.nearest
    f32.floor
    i64.trunc_f32_u
    i64.ctz
    i64.clz
    i64.popcnt
    f64.convert_i64_u
    local.get 0
    f64.gt
    i64.extend_i32_s
    i64.ctz
    ;;INSPECT
    f64.convert_i64_s
    f32.demote_f64
    i64.trunc_f32_u
    i64.clz
    f32.convert_i64_s
    f32.nearest
    f32.abs
    local.tee 1
    i32.reinterpret_f32
    global.set $global_3733789852
)

)