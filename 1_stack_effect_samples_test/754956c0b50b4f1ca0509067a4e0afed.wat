(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2602416787 i64 (i64.const 4171630772455507425))
(global $global_892924073 (mut f32) (f32.const 7.854237617959731e+18))
(func $run (export "run")
    (local i32 i64)
    (local $temp i32)
    local.get 0
    f64.convert_i32_s
    f64.trunc
    i64.reinterpret_f64
    f64.convert_i64_s
    f32.demote_f64
    i32.reinterpret_f32
    i32.clz
    local.get 0
    i32.shr_s
    i32.clz
    ;;INSPECT
    i32.extend8_s
    i64.extend_i32_s
    i32.wrap_i64
    f32.convert_i32_u
    f32.abs
    f32.floor
    f32.ceil
    (f32.const -244288684032.0)
    global.get $global_2602416787
    nop
    local.set 1
    f32.mul
    global.set $global_892924073
)

)