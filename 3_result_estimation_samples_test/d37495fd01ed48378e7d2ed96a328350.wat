(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_2729187536 (mut i64) (i64.const 3352382259112353209))
(func $run (export "run") (result f64)
    (local i32)
    (local $temp i32)
    global.get $global_2729187536
    i64.eqz
    local.set 0
    (i32.const 87657377)
    i32.extend8_s
    i64.extend_i32_u
    i64.extend16_s
    f64.convert_i64_s
)

)