(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_3178901959 (mut i64) (i64.const 7903400898131362305))
(func $run (export "run") (result i32)
    (local i64)
    (local $temp i32)
    (f64.const 1.7988838158168319e-122)
    drop
    local.get 0
    f64.convert_i64_s
    f64.floor
    (i64.const -77655)
    global.set $global_3178901959
    (f64.const 2.345822453493885e-184)
    f64.eq
)

)