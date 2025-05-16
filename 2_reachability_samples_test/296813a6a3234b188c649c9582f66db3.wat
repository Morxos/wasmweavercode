(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2207953873 i64 (i64.const -5369142652417777949))
(func $run (export "run")
    (local i64 f32 i64)
    (local $temp i32)
    ;;FLAG_0
    global.get $global_2207953873
    local.tee 0
    nop
    i64.extend32_s
    (i32.const -66)
    f32.convert_i32_u
    block (param f32)
        ;;FLAG_3
        f32.sqrt
        f32.abs
        local.set 1
        nop
        (f64.const 1.9366015996502116e+262)
        f64.floor
        i64.reinterpret_f64
        nop
        i64.eqz
        (br_table 0 1)
        ;;FLAG_4
    end

    ;;FLAG_1
    local.tee 2
    drop
    (i32.const 718)
    (br_table 0)
    ;;FLAG_2
)

)