(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3620659517 i32 (i32.const -861175004))
(global $global_1378701100 (mut i64) (i64.const 5331532645900664623))
(func $run (export "run")
    (local f64 i32)
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_2
        block
            ;;FLAG_4
            (i32.const -860)
            i32.clz
            i64.extend_i32_u
            i64.eqz
            i32.clz
            (br_table 0 1 2)
        end

        ;;FLAG_3
        global.get $global_3620659517
        i64.extend_i32_u
        global.set $global_1378701100
        (f64.const 8.499775307867755e+134)
        f64.ceil
        local.set 0
    end

    ;;FLAG_1
    (f32.const -1.0592529614151592e+36)
    global.get $global_3620659517
    f32.reinterpret_i32
    (i64.const 8493300)
    i64.ctz
    (f32.const -3.402378903687908e-37)
    f32.trunc
    i32.trunc_f32_u
    i32.clz
    (f32.const 166631946846208.0)
    i32.reinterpret_f32
    i32.rem_u
    drop
    i64.popcnt
    global.set $global_1378701100
    (i64.const -89191)
    i64.ctz
    global.get $global_3620659517
    drop
    i64.popcnt
    block (param f32 i64) (result f32)
        i64.ctz
        drop
        drop
        (i32.const 324748)
        local.tee 1
        i32.ctz
        f32.convert_i32_s
    end

    f32.eq
    f64.convert_i32_s
    i32.trunc_f64_u
    i32.ctz
    i32.extend8_s
    global.get $global_3620659517
    i32.le_s
    (br_table 0)
)

)