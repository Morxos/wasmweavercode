(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1670754152 (mut f64) (f64.const 3.719770969263915e+18))
(global $global_3260203624 (mut i32) (i32.const -645572932))
(func $run (export "run")
    (local f32 i64)
    (local $temp i32)
    local.get 0
    f32.abs
    i32.trunc_f32_s
    f32.convert_i32_u
    global.get $global_1670754152
    i64.trunc_f64_s
    local.set 1
    (i32.const 830674)
    ;;INSPECT
    global.set $global_3260203624
    i32.reinterpret_f32
    f32.reinterpret_i32
    f32.floor
    (i32.const 2585445)
    i32.extend16_s
    f32.convert_i32_u
    f32.lt
    global.set $global_3260203624
    (i32.const -748447022)
    f32.reinterpret_i32
    drop
    global.get $global_1670754152
    f64.sqrt
    drop
    (i32.const 64585)
    global.set $global_3260203624
)

)