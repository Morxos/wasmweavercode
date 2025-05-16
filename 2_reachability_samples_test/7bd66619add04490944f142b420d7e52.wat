(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2079344506 (mut f32) (f32.const -2.3855314888262943e+18))
(global $global_1965303884 (mut f64) (f64.const 4.202379758627369e+17))
(func $run (export "run")
    (local i32 i32 i64)
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_2
        local.get 0
        i64.extend_i32_s
        f64.convert_i64_u
        local.get 0
        i32.ctz
        i64.extend_i32_u
        f32.convert_i64_u
        global.set $global_2079344506
        i32.trunc_f64_u
        local.tee 1
        f32.convert_i32_u
        f32.ceil
        nop
        f64.promote_f32
        global.set $global_1965303884
    end

    ;;FLAG_1
    nop
    (i32.const 968296)
    f64.convert_i32_u
    i64.trunc_f64_s
    i64.extend8_s
    f64.convert_i64_s
    f64.floor
    f64.abs
    i64.trunc_f64_u
    local.tee 2
    f32.convert_i64_u
    f32.sqrt
    f32.nearest
    global.set $global_2079344506
)

)