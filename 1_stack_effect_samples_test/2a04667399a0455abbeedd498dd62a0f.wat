(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_942252926 (mut i32) (i32.const 1001480815))
(global $global_235794455 (mut i64) (i64.const 5654217467635108973))
(func $run (export "run")
    (local f64 i64 i32)
    (local $temp i32)
    local.get 0
    i64.trunc_f64_u
    local.tee 1
    i64.ctz
    f32.convert_i64_u
    f32.sqrt
    f32.ceil
    f32.abs
    (f32.const 1.217092752456665)
    ;;INSPECT
    f32.copysign
    f32.ceil
    f32.trunc
    f32.ceil
    f32.ceil
    f32.trunc
    nop
    f32.abs
    i32.reinterpret_f32
    local.tee 2
    global.set $global_942252926
    nop
    local.get 0
    i64.trunc_f64_u
    i64.clz
    i64.clz
    i64.eqz
    f64.convert_i32_u
    i64.trunc_f64_s
    i64.popcnt
    i64.clz
    global.set $global_235794455
)

)