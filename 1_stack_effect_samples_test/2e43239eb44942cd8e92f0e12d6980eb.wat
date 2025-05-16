(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2928255512 (mut i64) (i64.const 5795305578670420011))
(global $global_2021974066 (mut i32) (i32.const -827223827))
(global $global_290106446 (mut f32) (f32.const 5.143779827282608e+18))
(func $run (export "run")
    (local i64 i64 i64)
    (local $temp i32)
    local.get 0
    f64.convert_i64_s
    i64.trunc_f64_u
    f64.convert_i64_u
    i64.reinterpret_f64
    i64.extend32_s
    ;;INSPECT
    i64.extend32_s
    i64.extend32_s
    i64.extend32_s
    local.tee 1
    i64.clz
    f32.convert_i64_u
    f32.sqrt
    f32.abs
    f32.ceil
    (f32.const 9927264.0)
    f32.max
    f32.abs
    global.get $global_2928255512
    local.tee 2
    nop
    local.get 0
    i64.shr_u
    i64.extend8_s
    i64.eqz
    nop
    global.set $global_2021974066
    i32.reinterpret_f32
    f32.reinterpret_i32
    global.set $global_290106446
)

)