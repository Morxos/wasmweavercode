(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3929398869 (mut i64) (i64.const -8804952897383439638))
(global $global_2227006735 (mut f64) (f64.const 6.227173440328862e+18))
(global $global_3142488374 (mut f32) (f32.const 8.903677486206812e+18))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    (f32.const -9.54842975520176e-13)
    f32.floor
    i32.reinterpret_f32
    i32.eqz
    i32.extend16_s
    i64.extend_i32_s
    i64.ctz
    ;;INSPECT
    i32.wrap_i64
    f32.reinterpret_i32
    local.tee 0
    f32.sqrt
    i32.reinterpret_f32
    i32.clz
    f32.convert_i32_u
    i32.trunc_f32_s
    f32.convert_i32_u
    global.get $global_3929398869
    i64.extend32_s
    i64.popcnt
    i64.extend16_s
    f32.convert_i64_u
    i32.trunc_f32_u
    i32.ctz
    i32.extend16_s
    f64.convert_i32_s
    i64.trunc_f64_s
    i64.clz
    i64.eqz
    f32.convert_i32_s
    f32.ceil
    i64.trunc_f32_u
    f64.convert_i64_u
    f64.sqrt
    global.set $global_2227006735
    f32.sqrt
    global.set $global_3142488374
)

)