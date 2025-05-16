(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2380663992 (mut i64) (i64.const 8118257884742118693))
(global $global_180150285 (mut f32) (f32.const 1.4032422316613304e+18))
(func $run (export "run")
    (local i64 f64)
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_3
        (i64.const -9003322123693658329)
        global.set $global_2380663992
        (f32.const -5617449466593280.0)
        drop
        global.get $global_2380663992
        local.set 0
    end

    ;;FLAG_1
    (i32.const -4)
    f32.convert_i32_u
    (i64.const -3)
    f64.convert_i64_u
    local.tee 1
    i64.reinterpret_f64
    drop
    global.set $global_180150285
    global.get $global_2380663992
    nop
    i64.ctz
    i32.wrap_i64
    (br_table 0)
    ;;FLAG_2
)

)