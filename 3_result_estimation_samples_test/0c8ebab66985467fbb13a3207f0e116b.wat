(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_2522363866 (mut f32) (f32.const -1.8282289020031468e+18))
(func $run (export "run") (result i64)
    (local i64)
    (local $temp i32)
    (f32.const -1.621372031387651e-33)
    global.set $global_2522363866
    nop
    (i64.const -20)
    local.set 0
    local.get 0
    i64.eqz
    f32.reinterpret_i32
    nop
    i32.trunc_f32_s
    f32.convert_i32_s
    drop
    local.get 0
    i64.extend8_s
)

)