(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local f32 i32)
    (local $temp i32)
    local.get 0
    f32.abs
    i64.trunc_f32_u
    ;;INSPECT
    (f32.const -1.4944673450484531e-15)
    i32.reinterpret_f32
    i32.eqz
    f32.convert_i32_s
    f32.abs
    i32.trunc_f32_s
    (f32.const -6.905118768865844e-21)
    f32.trunc
    i32.reinterpret_f32
    i32.clz
    i32.shr_s
    i32.popcnt
    f32.convert_i32_s
    f32.ceil
    drop
    i64.clz
    f32.convert_i64_s
    f32.trunc
    nop
    f32.sqrt
    f32.neg
    f32.neg
    f32.ceil
    f32.abs
    f32.sqrt
    i32.reinterpret_f32
    local.tee 1
    drop
)

)