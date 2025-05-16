(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_4025145348 (mut i32) (i32.const 1106879516))
(func $run (export "run")
    (local f64)
    (local $temp i32)
    (f32.const 1.63774598046541e+25)
    f32.nearest
    nop
    f32.ceil
    f64.promote_f32
    i64.reinterpret_f64
    f64.convert_i64_u
    f64.floor
    local.tee 0
    f64.floor
    drop
    (f32.const -9.557850129781534e+24)
    drop
    (f32.const 1.4177619078736825e-08)
    f32.floor
    i32.trunc_f32_u
    f32.reinterpret_i32
    i32.reinterpret_f32
    i32.clz
    i32.clz
    local.get 0
    drop
    f32.convert_i32_u
    f32.ceil
    f32.floor
    i32.trunc_f32_u
    i32.clz
    ;;INSPECT
    i32.clz
    global.set $global_4025145348
)

)