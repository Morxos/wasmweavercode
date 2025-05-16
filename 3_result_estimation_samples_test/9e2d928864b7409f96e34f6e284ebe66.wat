(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_515437078 (mut i32) (i32.const 1549760440))
(func $run (export "run") (result i64)
    (local f32 i32)
    (local $temp i32)
    (i32.const 6)
    i32.extend8_s
    global.set $global_515437078
    nop
    (f32.const -399936.03125)
    local.tee 0
    (f32.const -3.1923368455561926e-20)
    f32.gt
    (i32.const 42)
    i64.extend_i32_u
    f32.convert_i64_s
    f64.promote_f32
    i64.trunc_f64_s
    i64.clz
    i64.extend16_s
    i64.eqz
    f32.reinterpret_i32
    local.set 0
    local.get 0
    drop
    local.set 1
    (i32.const -320733887)
    i32.ctz
    i32.extend8_s
    global.set $global_515437078
    (i32.const -966484338)
    (i64.const -828182)
    nop
    f64.convert_i64_u
    f64.sqrt
    drop
    i64.extend_i32_u
)

)