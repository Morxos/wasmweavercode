(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_4217115396 i32 (i32.const 622265328))
(global $global_3023625981 (mut f32) (f32.const 3.9201204174690714e+18))
(global $global_356603812 (mut i32) (i32.const -233647450))
(func $run (export "run")
    (local f64 f32)
    (local $temp i32)
    local.get 0
    f64.nearest
    nop
    f64.trunc
    global.get $global_4217115396
    f32.convert_i32_u
    local.tee 1
    i32.reinterpret_f32
    ;;INSPECT
    f32.convert_i32_u
    i32.reinterpret_f32
    f32.convert_i32_u
    i32.reinterpret_f32
    f32.convert_i32_u
    f64.promote_f32
    f64.neg
    f64.mul
    f64.nearest
    f64.ceil
    i64.trunc_f64_s
    i64.extend16_s
    i32.wrap_i64
    f32.reinterpret_i32
    f32.trunc
    f32.trunc
    i32.trunc_f32_u
    i32.clz
    f32.convert_i32_u
    global.set $global_3023625981
    (f32.const 1.271252874428416e+16)
    i32.reinterpret_f32
    global.set $global_356603812
)

)