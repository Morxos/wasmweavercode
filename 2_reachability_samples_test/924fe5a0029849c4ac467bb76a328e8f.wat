(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1945591834 (mut i32) (i32.const -1160165431))
(func $run (export "run")
    (local i64 i32 f32 f32 f32)
    (local $temp i32)
    ;;FLAG_0
    (f32.const -10937961545728.0)
    nop
    nop
    (i32.const -55)
    (i64.const 6608)
    local.get 0
    i64.ge_u
    global.set $global_1945591834
    local.set 1
    local.tee 2
    (f64.const 9.3499295373185e+112)
    (f32.const -2.772233634871276e-14)
    local.set 2
    i64.reinterpret_f64
    f32.convert_i64_u
    f32.copysign
    f32.trunc
    local.tee 3
    f32.neg
    f32.nearest
    local.tee 4
    f32.ceil
    local.set 2
)

)