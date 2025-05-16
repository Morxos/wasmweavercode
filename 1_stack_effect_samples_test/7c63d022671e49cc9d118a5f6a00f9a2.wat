(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_62691889 i32 (i32.const -1078398363))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    local.get 0
    i64.extend32_s
    i64.eqz
    i64.extend_i32_s
    (f32.const 0.0)
    (f32.const 113855299584.0)
    f32.sqrt
    global.get $global_62691889
    select
    f32.ceil
    f32.neg
    f32.neg
    i32.reinterpret_f32
    i32.eqz
    i32.extend8_s
    i32.extend8_s
    i32.extend8_s
    i32.extend8_s
    i32.eqz
    i32.extend16_s
    i32.extend16_s
    f64.convert_i32_s
    i32.trunc_f64_u
    i32.extend16_s
    f32.convert_i32_s
    f32.nearest
    i64.trunc_f32_u
    i64.rotr
    i64.eqz
    f64.convert_i32_s
    ;;INSPECT
    drop
)

)