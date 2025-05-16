(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3112052811 (mut i32) (i32.const 658426166))
(func $run (export "run")
    (local f32 i32)
    (local $temp i32)
    ;;INSPECT
    local.get 0
    f32.abs
    i32.reinterpret_f32
    i32.extend8_s
    i32.extend16_s
    i32.extend16_s
    f32.convert_i32_u
    i64.trunc_f32_s
    i64.extend32_s
    i64.extend32_s
    i32.wrap_i64
    i32.popcnt
    i64.extend_i32_s
    f32.convert_i64_u
    f32.sqrt
    f32.abs
    i32.reinterpret_f32
    i32.ctz
    i32.ctz
    local.tee 1
    global.set $global_3112052811
    local.get 0
    f32.trunc
    local.get 0
    i64.trunc_f32_u
    i64.extend32_s
    i64.popcnt
    i64.eqz
    f32.convert_i32_s
    f32.ceil
    f32.trunc
    f32.ceil
    (i32.const -9228)
    select
    i32.reinterpret_f32
    local.set 1
)

)