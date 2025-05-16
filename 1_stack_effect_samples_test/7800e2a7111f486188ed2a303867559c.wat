(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2809947162 (mut f32) (f32.const -3.480735779800482e+18))
(func $run (export "run")
    (local f32 i32 i32 i32)
    (local $temp i32)
    local.get 0
    f32.ceil
    f32.sqrt
    i64.trunc_f32_u
    ;;INSPECT
    i32.wrap_i64
    i32.extend16_s
    i32.extend16_s
    local.tee 1
    i64.extend_i32_s
    i64.eqz
    local.tee 2
    f32.convert_i32_u
    f32.neg
    f32.ceil
    i32.trunc_f32_s
    i32.clz
    i32.ctz
    local.tee 3
    f32.convert_i32_u
    f32.floor
    i64.trunc_f32_u
    f64.convert_i64_s
    f64.sqrt
    i32.trunc_f64_u
    i32.extend16_s
    i32.clz
    drop
    (i32.const -9)
    i32.extend16_s
    i64.extend_i32_u
    f32.convert_i64_s
    global.set $global_2809947162
)

)