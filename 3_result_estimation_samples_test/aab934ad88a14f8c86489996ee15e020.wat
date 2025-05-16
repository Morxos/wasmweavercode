(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_1547175216 (mut i64) (i64.const 7756970108160241241))
(func $run (export "run") (result i32)
    (local f64 i32 i64 f32)
    (local $temp i32)
    nop
    (f32.const 146558779392.0)
    (f32.const 0.0)
    f32.ceil
    f32.mul
    i32.trunc_f32_s
    i64.extend_i32_u
    (f64.const 4.2916089709473465e+285)
    drop
    global.set $global_1547175216
    (i64.const -4543)
    (i32.const 0)
    i32.clz
    i32.popcnt
    (i64.const 50)
    (f64.const 4.739859957808053e+25)
    f64.floor
    local.set 0
    i64.eqz
    i32.or
    local.set 1
    local.set 2
    (f32.const -1.7609732948819804e+28)
    (f32.const -2.0593237337607206e-08)
    f32.min
    local.set 3
    (f64.const 4.744839744231165e-87)
    i64.trunc_f64_s
    i64.ctz
    f32.convert_i64_s
    local.set 3
    (f64.const 1.1210416218710901e-234)
    i32.trunc_f64_u
    (i64.const -703)
    drop
)

)