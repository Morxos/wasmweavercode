(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_684315152 (mut f64) (f64.const -6.114588926713881e+18))
(global $global_1291968795 (mut i32) (i32.const -1342345113))
(func $run (export "run") (result f32)
    (local f64)
    (local $temp i32)
    (f64.const 5.357366983251516e-205)
    global.set $global_684315152
    (i32.const 3)
    i32.clz
    global.set $global_1291968795
    local.get 0
    global.get $global_684315152
    i32.trunc_f64_u
    i32.extend16_s
    (i64.const 6116584680382294168)
    i64.eqz
    i32.gt_u
    global.set $global_1291968795
    f64.nearest
    f64.nearest
    i64.reinterpret_f64
    drop
    (f32.const 1.1855029132273997e-35)
)

)