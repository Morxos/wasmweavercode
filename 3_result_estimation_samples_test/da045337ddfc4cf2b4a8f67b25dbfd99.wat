(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result f64)
    (local f32)
    (local $temp i32)
    nop
    (i64.const 80)
    i64.extend8_s
    f32.convert_i64_u
    local.tee 0
    block (param f32) (result i64)
        nop
        local.set 0
        local.get 0
        local.set 0
        local.get 0
        i32.trunc_f32_u
        i64.extend_i32_u
    end

    i64.extend8_s
    i64.extend16_s
    i64.extend32_s
    f32.convert_i64_u
    i32.trunc_f32_u
    nop
    i32.extend8_s
    drop
    (i64.const 6632)
    nop
    f64.reinterpret_i64
)

)