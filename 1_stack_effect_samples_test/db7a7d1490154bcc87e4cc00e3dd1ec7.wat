(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3816472305 (mut i32) (i32.const 1003683365))
(func $run (export "run")
    (local i32 i64)
    (local $temp i32)
    local.get 0
    (f32.const 8074.23046875)
    i32.trunc_f32_s
    i32.shr_s
    global.set $global_3816472305
    (f32.const 2185.000732421875)
    f32.sqrt
    f32.trunc
    i32.reinterpret_f32
    nop
    global.set $global_3816472305
    global.get $global_3816472305
    f64.convert_i32_u
    f64.nearest
    global.get $global_3816472305
    f64.convert_i32_s
    f64.copysign
    ;;INSPECT
    global.get $global_3816472305
    i32.eqz
    i64.extend_i32_s
    i64.extend16_s
    local.set 1
    local.get 0
    i32.clz
    drop
    f64.floor
    f64.floor
    f64.sqrt
    drop
    nop
)

)