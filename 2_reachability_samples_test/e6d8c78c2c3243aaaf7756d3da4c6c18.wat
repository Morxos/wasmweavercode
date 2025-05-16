(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1760818597 (mut i32) (i32.const 407656963))
(func $run (export "run")
    (local i32 i32 f32)
    (local $temp i32)
    ;;FLAG_0
    (i32.const 1381227413)
    f64.convert_i32_u
    i64.trunc_f64_s
    (i64.const -43117749)
    i64.div_s
    f64.convert_i64_u
    (i64.const -2527044099188966266)
    f32.convert_i64_u
    i32.reinterpret_f32
    local.tee 0
    local.tee 1
    i64.extend_i32_u
    nop
    i64.clz
    (f32.const -9.00596597297465e-10)
    f32.floor
    (f32.const 1.5488471897730415e+28)
    f32.ge
    i32.ctz
    block (param i64 i32)
        ;;FLAG_2
        i32.clz
        f64.convert_i32_u
        f64.nearest
        i32.trunc_f64_s
        i32.extend8_s
        i64.extend_i32_s
        i64.eq
        global.set $global_1760818597
    end

    ;;FLAG_1
    f64.sqrt
    f32.demote_f64
    local.set 2
)

)