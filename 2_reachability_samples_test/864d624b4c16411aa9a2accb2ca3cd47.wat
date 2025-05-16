(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_621969600 (mut f32) (f32.const -1.900923663029371e+18))
(global $global_4253579486 (mut i32) (i32.const -1577179754))
(func $run (export "run")
    (local i64 i32 f64)
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_3
        global.get $global_621969600
        f64.promote_f32
        i64.trunc_f64_s
        local.tee 0
        f64.convert_i64_s
        nop
        (f32.const 9.720777274001365e+30)
        i32.reinterpret_f32
        i32.popcnt
        i32.extend16_s
        local.set 1
        local.tee 2
        (f32.const 69.18014526367188)
        f32.neg
        local.get 0
        local.set 0
        nop
        f32.nearest
        global.get $global_621969600
        f32.gt
        global.set $global_4253579486
        (i64.const -21202)
        i64.extend32_s
        local.set 0
        f64.trunc
        global.get $global_621969600
        f32.ceil
        i32.reinterpret_f32
        f64.convert_i32_u
        f64.max
        (f32.const 6.829265046597196e+25)
        drop
        i64.trunc_f64_s
        (i64.const 1)
        i64.ge_s
        f32.convert_i32_u
        i32.reinterpret_f32
        i32.clz
        local.set 1
    end

    ;;FLAG_1
    (i32.const 723)
    i64.extend_i32_s
    i32.wrap_i64
    i32.ctz
    (i64.const -556)
    i64.eqz
    i32.rotl
    (br_table 0)
    ;;FLAG_2
    nop
    br 0
)

)