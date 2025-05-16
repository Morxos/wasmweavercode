(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1526217912 f32 (f32.const -4.0388863649665516e+18))
(global $global_1656646205 (mut i64) (i64.const -3027433087819226556))
(global $global_3301138096 (mut i32) (i32.const -859845654))
(func $run (export "run")
    (local i64 i32)
    (local $temp i32)
    ;;FLAG_0
    block
        (f64.const 8.357304061813285e+189)
        i64.reinterpret_f64
        local.set 0
        nop
        (i32.const -3)
        (br_table 1 0)
        ;;FLAG_4
    end

    ;;FLAG_1
    global.get $global_1526217912
    i32.reinterpret_f32
    i32.clz
    f64.convert_i32_u
    f32.demote_f64
    i32.reinterpret_f32
    (br_table 0)
    (i64.const 12)
    i64.extend32_s
    local.get 0
    global.set $global_1656646205
    i64.clz
    i64.eqz
    (br_table 0)
    ;;FLAG_2
    (f32.const -1.5209430103633257e-21)
    local.get 0
    i64.popcnt
    (f64.const 1.524421958269006e-29)
    f64.neg
    i64.trunc_f64_s
    i64.extend8_s
    i64.extend8_s
    i64.ctz
    i64.eq
    i32.popcnt
    i64.extend_i32_s
    i64.eqz
    i64.extend_i32_s
    i64.eqz
    (i32.const 2698124)
    i32.shr_s
    global.set $global_3301138096
    (i32.const 1666381880)
    (i32.const 7)
    i32.lt_u
    local.tee 1
    f32.reinterpret_i32
    f32.nearest
    f32.gt
    i64.extend_i32_s
    i64.eqz
    (br_table 0)
    ;;FLAG_3
)

)