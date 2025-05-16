(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result i32)
    (local f32)
    (local $temp i32)
    (f32.const 1.3122440634116828e-10)
    (i32.const -7208)
    i32.extend8_s
    i32.popcnt
    i32.popcnt
    f32.convert_i32_s
    f32.ceil
    local.set 0
    (f64.const 2.9591553536735235e-13)
    drop
    i64.trunc_f32_s
    drop
    block
        (i64.const 1583787235899673137)
        (f64.const 5.247761896592509e+139)
        f64.abs
        drop
        drop
    end

    nop
    nop
    (i64.const -5)
    i32.wrap_i64
)

)