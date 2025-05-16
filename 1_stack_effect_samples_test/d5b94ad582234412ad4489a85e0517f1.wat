(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1816789068 (mut f32) (f32.const 5.200277682520064e+18))
(global $global_730328354 (mut i32) (i32.const 274166640))
(func $run (export "run")
    (local f64 f32 f64)
    (local $temp i32)
    local.get 0
    (f32.const -1.9138855350320227e-05)
    f32.floor
    f32.trunc
    i32.reinterpret_f32
    f32.convert_i32_s
    f32.neg
    local.tee 1
    global.set $global_1816789068
    local.tee 2
    i64.reinterpret_f64
    i64.popcnt
    global.get $global_1816789068
    f32.floor
    nop
    i32.trunc_f32_u
    f32.convert_i32_u
    nop
    i32.reinterpret_f32
    i32.clz
    ;;INSPECT
    f32.convert_i32_s
    f32.neg
    (i32.const 806686)
    global.set $global_730328354
    drop
    i32.wrap_i64
    f32.convert_i32_u
    i32.reinterpret_f32
    global.set $global_730328354
)

)