(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1933408748 (mut i32) (i32.const -161458490))
(func $run (export "run")
    (local i32 f64)
    (local $temp i32)
    nop
    local.get 0
    global.get $global_1933408748
    f64.convert_i32_s
    local.tee 1
    f64.abs
    local.set 1
    i32.extend8_s
    ;;INSPECT
    i32.extend16_s
    local.get 0
    i32.lt_u
    global.set $global_1933408748
    (f32.const -2179005952.0)
    drop
    (f32.const 1.7442280326779476e-14)
    i32.trunc_f32_u
    i32.clz
    i32.eqz
    i32.extend8_s
    i32.extend16_s
    i32.extend8_s
    i32.clz
    i32.clz
    i32.extend16_s
    i32.clz
    i32.clz
    global.set $global_1933408748
)

)