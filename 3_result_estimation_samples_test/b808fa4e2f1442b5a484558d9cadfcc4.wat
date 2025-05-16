(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_2540726238 (mut i64) (i64.const 4906583931134821974))
(func $run (export "run") (result f64)
    (local $temp i32)
    global.get $global_2540726238
    i64.clz
    f64.convert_i64_s
    f64.nearest
    f64.sqrt
)

)