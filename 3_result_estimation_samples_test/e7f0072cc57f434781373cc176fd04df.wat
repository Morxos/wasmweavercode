(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_3806186572 (mut f32) (f32.const -1.5843900708723098e+18))
(global $global_2207941020 (mut i64) (i64.const -8368932433446639506))
(func $run (export "run") (result f32)
    (local f32 f32)
    (local $temp i32)
    local.get 0
    local.tee 1
    global.set $global_3806186572
    nop
    (i64.const -5942)
    f64.reinterpret_i64
    f64.nearest
    f64.ceil
    (i32.const -49)
    i64.extend_i32_u
    local.get 0
    global.set $global_3806186572
    global.set $global_2207941020
    i64.reinterpret_f64
    (f64.const 2.1492423872614722e-126)
    i32.trunc_f64_s
    i64.extend_i32_s
    i64.ne
    drop
    nop
    local.get 0
)

)