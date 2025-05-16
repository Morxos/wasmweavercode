(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_858348101 (mut f64) (f64.const -3.554579669896067e+18))
(global $global_339490937 (mut i32) (i32.const 1545180206))
(func $run (export "run") (result f32)
    (local f32 f64 i64)
    (local $temp i32)
    (i64.const -72811248)
    f64.reinterpret_i64
    local.get 0
    drop
    global.set $global_858348101
    global.get $global_858348101
    drop
    (f64.const 1.1946930625839885e-36)
    local.tee 1
    i64.trunc_f64_s
    (i32.const 92043908)
    (f32.const 2.1947130459848876e-32)
    i64.trunc_f32_u
    local.set 2
    (i32.const -41292)
    i32.shl
    i32.clz
    global.set $global_339490937
    i64.extend8_s
    f64.reinterpret_i64
    f32.demote_f64
)

)