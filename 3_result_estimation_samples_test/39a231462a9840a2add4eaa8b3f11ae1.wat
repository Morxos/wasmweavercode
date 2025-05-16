(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_3073811404 (mut f32) (f32.const 8.828319158262301e+18))
(func $run (export "run") (result i64)
    (local f32 f64)
    (local $temp i32)
    local.get 0
    (f32.const 797737091072.0)
    local.set 0
    i64.trunc_f32_s
    f64.reinterpret_i64
    f64.abs
    local.set 1
    (i64.const -6682338266089639676)
    f64.reinterpret_i64
    f64.floor
    f32.demote_f64
    block (param f32)
        (i32.const -1890000)
        i32.extend8_s
        f32.convert_i32_u
        f32.eq
        f32.convert_i32_u
        global.set $global_3073811404
        (i32.const -44)
        br_if 0
    end

    global.get $global_3073811404
    local.set 0
    nop
    (i64.const -3130869)
    nop
)

)