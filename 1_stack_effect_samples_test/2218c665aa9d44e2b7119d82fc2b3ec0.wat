(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_158806136 i64 (i64.const -6592370082806295576))
(global $global_215868631 (mut i64) (i64.const -7375935591827738298))
(func $run (export "run")
    (local f32 f64)
    (local $temp i32)
    nop
    global.get $global_158806136
    i64.eqz
    f32.convert_i32_s
    i32.trunc_f32_s
    i64.extend_i32_s
    i64.ctz
    f32.convert_i64_u
    f64.promote_f32
    f64.sqrt
    f64.neg
    f64.neg
    local.get 0
    i64.trunc_f32_s
    i64.popcnt
    i64.extend32_s
    ;;INSPECT
    i64.ctz
    i64.clz
    i64.popcnt
    i64.eqz
    f32.convert_i32_s
    i32.trunc_f32_s
    i32.ctz
    i64.extend_i32_u
    i32.wrap_i64
    f32.convert_i32_s
    f32.trunc
    f32.ceil
    (i64.const -4)
    i64.popcnt
    f64.convert_i64_s
    i64.trunc_f64_s
    i64.popcnt
    i64.ctz
    i64.clz
    i64.popcnt
    f64.convert_i64_s
    local.tee 1
    i64.reinterpret_f64
    global.set $global_215868631
    local.set 0
    local.set 1
)

)