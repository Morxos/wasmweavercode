(module
(type $sig_function_3054480301 (func))
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3063821523 (mut i64) (i64.const 7875621107876680289))
(func $function_3054480301 (export "function_3054480301")
    (local i64 f64 f32)
    (local $temp i32)
    ;;FLAG_0
    (i64.const -72751759)
    local.tee 0
    f64.reinterpret_i64
    f64.floor
    f64.trunc
    local.tee 1
    local.set 1
    (f32.const -6.422770235921868e-39)
    local.set 2
    (f32.const -1.1806125257862732e-05)
    (f32.const -3.6272370313808536e-23)
    f32.le
    (br_table 0)
    ;;FLAG_1
    global.get $global_3063821523
    local.set 0
)
(func $run (export "run")
    (local i64 i32)
    (local $temp i32)
    global.get $global_3063821523
    global.set $global_3063821523
    (i64.const 34608)
    i64.extend8_s
    local.tee 0
    block
        global.get $global_3063821523
        global.set $global_3063821523
        global.get $global_3063821523
        i64.popcnt
        local.set 0
        (i32.const 6479)
        local.tee 1
        (f32.const -4269009318969344.0)
        global.get $global_3063821523
        drop
        i32.reinterpret_f32
        i32.shr_s
        (br_table 1 0)
        local.get 0
        f64.reinterpret_i64
        call $function_3054480301
        i32.trunc_f64_s
        (br_table 1 0)
        ;;FLAG_4
        (f64.const 9.409477139686506e+254)
        drop
    end

    ;;FLAG_2
    i32.wrap_i64
    i32.popcnt
    (br_table 0)
    ;;FLAG_3
)

)