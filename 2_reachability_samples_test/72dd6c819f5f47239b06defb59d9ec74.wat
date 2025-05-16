(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3701037976 (mut f32) (f32.const 1.475366277433262e+17))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    nop
    (i64.const -61317579)
    (i64.const -758)
    i64.gt_s
    f32.reinterpret_i32
    f32.nearest
    global.set $global_3701037976
    br 0
)

)