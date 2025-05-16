(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3296885945 (mut i32) (i32.const -539480787))
(func $run (export "run")
    (local i64 f32)
    (local $temp i32)
    ;;FLAG_0
    (f32.const -7.562982078519705e+26)
    drop
    (f32.const 902692067082240.0)
    (f32.const -24.528108596801758)
    f32.copysign
    f32.floor
    f32.abs
    (i64.const -39389322)
    i64.popcnt
    local.tee 0
    i64.eqz
    global.set $global_3296885945
    local.tee 1
    i32.reinterpret_f32
    (br_table 0)
    ;;FLAG_1
    br 0
)

)