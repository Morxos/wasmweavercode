(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1045237536 (mut i32) (i32.const 1358243893))
(func $run (export "run")
    (local f64)
    (local $temp i32)
    (f32.const -8.189741656409672e+32)
    f32.neg
    f32.ceil
    f64.promote_f32
    f64.floor
    f64.trunc
    drop
    nop
    (f32.const 2.1622681211517272e+19)
    f64.promote_f32
    f64.sqrt
    local.tee 0
    f64.nearest
    f64.sqrt
    i64.trunc_f64_s
    i64.popcnt
    ;;INSPECT
    i64.clz
    i64.eqz
    i32.clz
    f32.convert_i32_s
    i32.trunc_f32_u
    i32.clz
    i32.clz
    (i32.const 54108)
    i32.div_s
    global.set $global_1045237536
)

)