(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_2859495063 (mut i32) (i32.const 1389928097))
(func $run (export "run") (result f32)
    (local f32 i32)
    (local $temp i32)
    local.get 0
    f32.abs
    f64.promote_f32
    i32.trunc_f64_u
    i32.eqz
    global.set $global_2859495063
    nop
    global.get $global_2859495063
    f32.convert_i32_u
    local.get 0
    f32.eq
    f32.convert_i32_u
    local.get 0
    global.get $global_2859495063
    i32.eqz
    i32.ctz
    i32.extend16_s
    local.set 1
    f32.le
    i64.extend_i32_u
    f64.reinterpret_i64
    f64.trunc
    i32.trunc_f64_u
    (f64.const 4.027075631566708e-101)
    i32.trunc_f64_u
    i32.rotl
    f32.convert_i32_s
)

)