(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3407894205 (mut f64) (f64.const -8.258291743545989e+18))
(func $run (export "run")
    (local f32 f32 f32 i32 f64)
    (local $temp i32)
    local.get 0
    local.tee 1
    f32.abs
    i32.reinterpret_f32
    local.get 0
    f32.ceil
    f32.ceil
    i64.trunc_f32_u
    local.get 0
    local.tee 2
    f32.neg
    i32.trunc_f32_s
    i32.extend8_s
    i32.extend16_s
    i32.extend16_s
    local.set 3
    f64.convert_i64_s
    f32.demote_f64
    i64.trunc_f32_u
    f64.reinterpret_i64
    f64.abs
    ;;INSPECT
    f64.abs
    global.set $global_3407894205
    i64.extend_i32_s
    f64.reinterpret_i64
    f64.sqrt
    f64.neg
    f64.neg
    f64.abs
    f64.abs
    local.set 4
)

)