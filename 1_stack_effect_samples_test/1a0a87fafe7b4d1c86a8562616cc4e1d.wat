(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_215733311 i64 (i64.const -3498742461857422502))
(global $global_1026806906 (mut i32) (i32.const 474329506))
(global $global_2272814336 (mut i64) (i64.const 6629519345355530750))
(func $run (export "run")
    (local i32 i64)
    (local $temp i32)
    local.get 0
    i32.ctz
    f32.convert_i32_s
    f32.abs
    f32.floor
    i64.trunc_f32_u
    i64.eqz
    i64.extend_i32_s
    global.get $global_215733311
    f64.convert_i64_s
    f64.abs
    f64.sqrt
    i32.trunc_f64_u
    global.set $global_1026806906
    global.set $global_2272814336
    (i64.const -6198369)
    i64.extend32_s
    i64.extend16_s
    local.tee 1
    i64.popcnt
    ;;INSPECT
    i64.eqz
    i32.extend8_s
    f32.convert_i32_s
    i32.trunc_f32_s
    f32.convert_i32_s
    i64.trunc_f32_u
    i64.popcnt
    i64.clz
    i64.extend16_s
    i64.popcnt
    i64.clz
    f32.convert_i64_u
    f32.ceil
    i32.reinterpret_f32
    global.set $global_1026806906
)

)