(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3702187077 (mut i32) (i32.const -703059362))
(func $run (export "run")
    (local i64 f32)
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_4
        (i32.const -60206)
        f64.convert_i32_u
        f32.demote_f64
        i32.reinterpret_f32
        global.set $global_3702187077
    end

    ;;FLAG_1
    (f32.const 1.4471810416694098e-08)
    local.get 0
    drop
    i32.trunc_f32_s
    (br_table 0)
    ;;FLAG_2
    (i32.const -3247)
    (br_table 0)
    ;;FLAG_3
    local.get 0
    f64.reinterpret_i64
    drop
    (f32.const 1.9696620636583395e-12)
    local.tee 1
    i64.trunc_f32_u
    drop
)

)