(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_185297893 (mut i32) (i32.const 479465141))
(func $run (export "run") (result f64)
    (local f64)
    (local $temp i32)
    block
        nop
        (i64.const -9958115)
        (i64.const 6569765)
        i64.mul
        i32.wrap_i64
        br_if 0
        local.get 0
        br 1
        i32.trunc_f64_u
        drop
    end

    local.get 0
    (f64.const 7.818598158746313e-107)
    f64.eq
    f32.reinterpret_i32
    i32.reinterpret_f32
    global.set $global_185297893
    (f64.const 5.5023984168169425e-281)
    f64.nearest
)

)