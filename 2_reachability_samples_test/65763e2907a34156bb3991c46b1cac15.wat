(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1696208217 (mut i32) (i32.const -563085468))
(func $run (export "run")
    (local i32 f64)
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_2
        (f32.const 0.0)
        i32.trunc_f32_s
        global.set $global_1696208217
        nop
        (f64.const 2.850790903226429e+53)
        f64.sqrt
        block (param f64)
            ;;FLAG_3
            drop
            (f32.const -1.1267182742358273e-08)
            i32.trunc_f32_s
            f64.convert_i32_u
            f64.floor
            f64.nearest
            f64.neg
            f64.floor
            i64.trunc_f64_u
            f32.convert_i64_s
            i64.trunc_f32_s
            nop
            f32.convert_i64_s
            i32.reinterpret_f32
            br_if 0
            ;;FLAG_4
        end

    end

    nop
    (f32.const 3.130732659781221e+37)
    f32.sqrt
    i32.reinterpret_f32
    f32.convert_i32_s
    global.get $global_1696208217
    i32.popcnt
    i32.eqz
    local.set 0
    f64.promote_f32
    local.tee 1
    i64.reinterpret_f64
    i64.eqz
    f32.convert_i32_s
    i32.trunc_f32_u
    i32.ctz
    f32.convert_i32_u
    i32.trunc_f32_u
    (br_table 0)
    ;;FLAG_1
)

)