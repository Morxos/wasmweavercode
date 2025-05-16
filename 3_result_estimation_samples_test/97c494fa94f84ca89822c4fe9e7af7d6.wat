(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_1030779477 (mut f32) (f32.const -4.455270044015788e+18))
(func $run (export "run") (result f64)
    (local f32)
    (local $temp i32)
    (f32.const -6.053568274959115e+24)
    global.set $global_1030779477
    (i64.const 447461492)
    f32.convert_i64_u
    local.set 0
    (i32.const -1170569)
    i64.extend_i32_s
    f32.convert_i64_u
    local.set 0
    (i32.const 601)
    f64.convert_i32_s
)

)