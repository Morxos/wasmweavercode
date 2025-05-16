(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_130972937 f64 (f64.const -2.608187661475787e+18))
(global $global_348382444 (mut f64) (f64.const 8.193025161983302e+18))
(global $global_3931907409 (mut f32) (f32.const -9.162544854582952e+18))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    global.get $global_130972937
    f64.neg
    global.set $global_348382444
    (i64.const -1073642)
    i64.ctz
    i64.extend8_s
    i64.extend16_s
    f32.convert_i64_u
    global.set $global_3931907409
    br 0
)

)