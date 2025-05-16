(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result f32)
    (local f64)
    (local $temp i32)
    nop
    (i64.const 741849865)
    i64.extend16_s
    f64.reinterpret_i64
    local.get 0
    f64.min
    block (param f64)
        f64.abs
        drop
        nop
        (f64.const 8.033644946060198e+265)
        drop
    end

    (f32.const 2.240210957411924e+35)
)

)