(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result f32)
    (local i32 i64)
    (local $temp i32)
    (i64.const -153294665)
    i32.wrap_i64
    local.set 0
    (i64.const -437479)
    i64.eqz
    i64.extend_i32_u
    local.tee 1
    local.get 0
    drop
    f32.convert_i64_s
)

)