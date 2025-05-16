(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result f64)
    (local i32)
    (local $temp i32)
    block
        local.get 0
        (f32.const 22024997044224.0)
        i64.trunc_f32_s
        i32.wrap_i64
        i32.rotl
        f64.convert_i32_u
        i32.trunc_f64_s
        br_if 0
    end

    (i64.const 309246038)
    i64.extend8_s
    f64.reinterpret_i64
    (i32.const 10)
    local.set 0
)

)