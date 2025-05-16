(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_1938632012 i32 (i32.const 1425368055))
(global $global_3896582092 (mut f32) (f32.const 6.622886849431994e+18))
(func $run (export "run") (result i64)
    (local $temp i32)
    global.get $global_1938632012
    drop
    (i32.const -1126)
    drop
    (i32.const 2139826)
    f32.reinterpret_i32
    global.set $global_3896582092
    (f64.const 1.6745040481435168e-99)
    drop
    (i64.const 521)
)

)