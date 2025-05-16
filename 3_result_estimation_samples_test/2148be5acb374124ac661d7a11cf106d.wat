(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_37079118 (mut f64) (f64.const -2.5490126638670213e+18))
(func $run (export "run") (result i64)
    (local f32 f64 i32)
    (local $temp i32)
    (f32.const 1.9558293504169226e-24)
    local.set 0
    (i64.const 75559325)
    f64.convert_i64_u
    local.set 1
    (i32.const -430290)
    i32.eqz
    i32.eqz
    local.set 2
    (f64.const 7.568580366076981e-169)
    f64.floor
    global.set $global_37079118
    (f32.const -5.736022454095053e+16)
    global.get $global_37079118
    f64.sqrt
    drop
    f32.ceil
    f32.ceil
    drop
    nop
    (i64.const -87009733)
    return
)

)