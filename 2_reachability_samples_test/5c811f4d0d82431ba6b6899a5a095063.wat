(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_534461841 (mut i64) (i64.const -4475284904979991426))
(func $run (export "run")
    (local f32 i32)
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_3
        nop
        (f64.const 1.6373702221973029e-218)
        i64.trunc_f64_u
        i64.popcnt
        i32.wrap_i64
        i32.extend8_s
        f32.reinterpret_i32
        local.tee 0
        i32.trunc_f32_u
        (br_table 1 0)
        ;;FLAG_4
    end

    ;;FLAG_1
    global.get $global_534461841
    i64.extend32_s
    global.set $global_534461841
    nop
    (f32.const -1.2500981938501354e-05)
    f32.ceil
    i64.trunc_f32_u
    i64.eqz
    (br_table 0)
    ;;FLAG_2
    global.get $global_534461841
    f64.convert_i64_u
    f64.neg
    local.get 0
    (f32.const -4.638823968561055e+35)
    f32.lt
    f32.convert_i32_u
    i32.trunc_f32_s
    global.get $global_534461841
    (f32.const 2.328591860841564e-33)
    i64.trunc_f32_u
    i64.eq
    i32.xor
    local.set 1
    i32.trunc_f64_s
    drop
    return
)

)