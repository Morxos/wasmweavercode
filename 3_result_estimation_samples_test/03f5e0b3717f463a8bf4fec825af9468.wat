(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_1843343825 i32 (i32.const -545911861))
(func $run (export "run") (result i64)
    (local i64 f32 i32)
    (local $temp i32)
    (f32.const -7.907222111879682e-30)
    f32.floor
    (i32.const 9)
    (i64.const 42414928)
    i64.ctz
    i32.wrap_i64
    i32.shr_s
    i32.eqz
    i32.extend8_s
    i32.extend8_s
    global.get $global_1843343825
    i32.le_s
    global.get $global_1843343825
    i32.ctz
    i32.shr_s
    (f64.const 2.6069669796080566e+161)
    drop
    i64.extend_i32_u
    i32.wrap_i64
    i64.extend_i32_s
    local.set 0
    local.set 1
    global.get $global_1843343825
    local.set 2
    local.get 0
)

)