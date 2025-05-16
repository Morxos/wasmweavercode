(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_49413909 (mut i32) (i32.const -1117268778))
(func $run (export "run")
    (local i32 i32)
    (local $temp i32)
    (f32.const 1.4419437616886751e-24)
    i32.reinterpret_f32
    local.tee 0
    (i32.const 5091)
    i32.div_s
    (i32.const -3)
    i32.div_s
    i32.clz
    ;;INSPECT
    local.tee 1
    i32.extend8_s
    f32.reinterpret_i32
    i64.trunc_f32_u
    f32.convert_i64_u
    i32.trunc_f32_u
    nop
    f32.convert_i32_u
    i32.reinterpret_f32
    global.set $global_49413909
    (i32.const 3951)
    f32.reinterpret_i32
    f32.trunc
    i32.reinterpret_f32
    local.get 0
    i32.div_s
    i32.clz
    i32.extend8_s
    i32.clz
    i32.clz
    i32.clz
    global.set $global_49413909
)

)