(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_765825989 i32 (i32.const 661310369))
(func $run (export "run") (result f32)
    (local i32)
    (local $temp i32)
    (f32.const 3.6154656390923843e-25)
    i32.trunc_f32_s
    i32.eqz
    global.get $global_765825989
    (i32.const 8091547)
    i32.shl
    i32.ctz
    i32.rotl
    local.tee 0
    f32.convert_i32_u
)

)