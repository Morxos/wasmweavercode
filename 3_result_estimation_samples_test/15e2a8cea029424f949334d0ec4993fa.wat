(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_2622539340 (mut i32) (i32.const 1133088535))
(global $global_924895489 (mut f32) (f32.const 6.913660395978752e+17))
(global $global_1027932010 (mut f64) (f64.const -1.8859019425586872e+18))
(func $run (export "run") (result f32)
    (local f32 i64)
    (local $temp i32)
    (i32.const 39)
    f32.reinterpret_i32
    f32.neg
    drop
    (i64.const 6234)
    i64.extend8_s
    drop
    global.get $global_2622539340
    i32.ctz
    drop
    (i32.const -39)
    (i32.const -1526782687)
    i32.shl
    f32.reinterpret_i32
    global.set $global_924895489
    (i64.const 5)
    i64.clz
    f64.convert_i64_s
    i64.trunc_f64_s
    f64.reinterpret_i64
    global.set $global_1027932010
    local.get 0
    i32.trunc_f32_u
    i64.extend_i32_u
    i64.extend32_s
    local.tee 1
    f32.convert_i64_u
)

)