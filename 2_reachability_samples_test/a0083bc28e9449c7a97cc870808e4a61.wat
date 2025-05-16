(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3551855420 (mut i64) (i64.const 6910004423296977994))
(func $run (export "run")
    (local f32 i64)
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_3
        nop
        (f64.const 1.3181605290133678e+38)
        (f32.const 0.0)
        f32.nearest
        local.tee 0
        local.set 0
        f64.sqrt
        f64.neg
        f64.floor
        local.get 0
        (f32.const 1.7771172523498535)
        f32.le
        nop
        drop
        f64.abs
        i64.reinterpret_f64
        f32.convert_i64_u
        f32.nearest
        i64.trunc_f32_u
        i64.clz
        i64.extend16_s
        i64.clz
        global.set $global_3551855420
    end

    ;;FLAG_1
    (i32.const -48888709)
    i32.popcnt
    global.get $global_3551855420
    local.tee 1
    local.get 0
    drop
    global.get $global_3551855420
    i64.div_u
    nop
    f64.convert_i64_u
    f64.floor
    i64.trunc_f64_u
    nop
    f32.convert_i64_u
    nop
    i32.trunc_f32_u
    i32.shr_s
    (br_table 0)
    ;;FLAG_2
)

)