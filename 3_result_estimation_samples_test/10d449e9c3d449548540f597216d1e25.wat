(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_972751055 (mut i64) (i64.const -5599372000749312573))
(func $run (export "run") (result i32)
    (local f32)
    (local $temp i32)
    (f32.const 5.609624896855955e+25)
    f32.sqrt
    i64.trunc_f32_s
    global.set $global_972751055
    (f32.const 1.209430955384505e-08)
    local.set 0
    nop
    (f64.const 1.366234534008228e+104)
    i64.reinterpret_f64
    i64.eqz
    i32.extend8_s
)

)