(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1162392323 (mut f32) (f32.const 3.245894664636596e+18))
(func $run (export "run")
    (local f32 f32 i32)
    (local $temp i32)
    local.get 0
    f32.sqrt
    i32.reinterpret_f32
    f32.convert_i32_u
    i64.trunc_f32_u
    f64.convert_i64_u
    ;;INSPECT
    f64.trunc
    f32.demote_f64
    f32.neg
    global.set $global_1162392323
    local.get 0
    local.tee 1
    i64.trunc_f32_u
    i64.ctz
    f64.convert_i64_s
    drop
    (f32.const -0.00017686524370219558)
    f32.floor
    f32.ceil
    i32.reinterpret_f32
    local.set 2
    nop
    nop
)

)