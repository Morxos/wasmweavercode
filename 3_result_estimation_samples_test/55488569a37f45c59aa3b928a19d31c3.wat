(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_4057753259 i64 (i64.const -1543836847160550666))
(func $run (export "run") (result f64)
    (local $temp i32)
    global.get $global_4057753259
    i64.ctz
    i64.ctz
    drop
    nop
    (i32.const 135)
    drop
    (f64.const 3.059750093716324e-71)
    f64.neg
)

)