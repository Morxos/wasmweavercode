(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(func $run (export "run")
    (local i32 f64 i64)
    (local $temp i32)
    ;;FLAG_0
    local.get 0
    i32.extend8_s
    i32.extend16_s
    local.set 0
    (f64.const 7.159915065073819e-170)
    i64.trunc_f64_u
    i64.extend16_s
    block (param i64) (result f32)
        ;;FLAG_3
        (f64.const 1.605166979688491e+105)
        local.set 1
        i64.extend16_s
        nop
        i64.extend8_s
        i64.extend16_s
        f64.convert_i64_u
        local.get 0
        f64.convert_i32_u
        i32.trunc_f64_s
        (i32.const -532)
        i32.shr_u
        i64.extend_i32_u
        i64.popcnt
        local.set 2
        f64.trunc
        f64.neg
        nop
        f64.nearest
        f64.floor
        i64.trunc_f64_u
        drop
        return
        return
        local.get 0
        (i64.const -594)
        i64.extend16_s
        (i32.const -91129862)
        i32.ctz
        i32.ctz
        f64.convert_i32_u
        i64.reinterpret_f64
        i64.eq
        drop
        f32.reinterpret_i32
    end

    ;;FLAG_1
    f32.trunc
    i32.reinterpret_f32
    i32.clz
    br_if 0
    ;;FLAG_2
)

)