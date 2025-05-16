(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2449565142 (mut i32) (i32.const -1355903204))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    (i32.const 910355821)
    global.set $global_2449565142
    ;;INSPECT
    nop
    global.get $global_2449565142
    nop
    f32.convert_i32_u
    f64.promote_f32
    f64.floor
    local.get 0
    i32.ctz
    i32.clz
    i32.eqz
    (f32.const 3.049318940867103e+36)
    nop
    f64.promote_f32
    f64.floor
    drop
    f32.convert_i32_u
    f32.neg
    i64.trunc_f32_u
    i64.eqz
    i32.eqz
    i32.extend8_s
    f64.convert_i32_u
    i32.trunc_f64_u
    i32.clz
    i32.clz
    drop
    i32.trunc_f64_u
    drop
)

)