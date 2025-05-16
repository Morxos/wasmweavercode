(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3828140176 (mut f32) (f32.const 8.16978426099191e+18))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    global.get $global_3828140176
    f32.ceil
    local.tee 0
    (i32.const 612994244)
    f32.convert_i32_u
    f32.lt
    nop
    ;;INSPECT
    f32.reinterpret_i32
    local.get 0
    f32.lt
    (i64.const -6)
    f64.convert_i64_s
    f32.demote_f64
    global.get $global_3828140176
    f32.lt
    i32.div_s
    i32.extend8_s
    f32.convert_i32_u
    nop
    i32.trunc_f32_u
    f32.convert_i32_u
    global.set $global_3828140176
    local.get 0
    global.set $global_3828140176
    (f32.const -8.600215167088373e+29)
    drop
)

)