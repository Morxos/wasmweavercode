(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1386473177 (mut f32) (f32.const -1.4141128282472448e+17))
(global $global_3364860316 (mut i64) (i64.const -1896294720481553139))
(global $global_3500038792 (mut i32) (i32.const 613434571))
(func $run (export "run")
    (local f32 i64)
    (local $temp i32)
    local.get 0
    i32.reinterpret_f32
    i32.extend8_s
    f32.reinterpret_i32
    f32.ceil
    i64.trunc_f32_u
    ;;INSPECT
    i32.wrap_i64
    local.get 0
    global.get $global_1386473177
    f32.neg
    f32.sqrt
    f32.add
    i32.trunc_f32_s
    i32.or
    f64.convert_i32_u
    i32.trunc_f64_u
    (i32.const 29518)
    i32.or
    (i64.const -308016456764281856)
    i64.ctz
    local.tee 1
    i64.popcnt
    nop
    global.set $global_3364860316
    global.set $global_3500038792
)

)