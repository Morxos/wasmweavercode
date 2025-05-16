(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2940897491 (mut f64) (f64.const 6.170136583541391e+18))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    local.get 0
    i64.trunc_f32_s
    f64.convert_i64_s
    f64.trunc
    i64.reinterpret_f64
    i64.eqz
    i32.extend8_s
    i32.clz
    f32.convert_i32_u
    f32.sqrt
    f32.ceil
    i32.trunc_f32_u
    f32.convert_i32_u
    i64.trunc_f32_u
    nop
    i64.ctz
    i64.ctz
    f64.convert_i64_s
    (f32.const -1.7738180169595333e-17)
    i64.trunc_f32_s
    f64.reinterpret_i64
    f64.sub
    f64.trunc
    i32.trunc_f64_s
    f32.convert_i32_u
    i32.reinterpret_f32
    i32.extend16_s
    f64.convert_i32_u
    f64.sqrt
    f32.demote_f64
    i64.trunc_f32_u
    nop
    f64.convert_i64_u
    ;;INSPECT
    f64.nearest
    global.set $global_2940897491
)

)