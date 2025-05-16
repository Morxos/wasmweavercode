(module
(type $sig_function_2639001328 (func))
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2284567271 (mut i64) (i64.const -1701031770195557633))
(func $function_2639001328 (export "function_2639001328")
    (local i32 i64 f32 f64)
    (local $temp i32)
    block
        ;;FLAG_1
        (f32.const -3.576832606069576e-24)
        drop
        nop
        (f32.const 3.352438185707874e+34)
        (i32.const -1)
        local.tee 0
        i32.ctz
        local.set 0
        (i64.const -82279247)
        local.set 1
        drop
        nop
        local.get 0
        (br_table 0 1)
        ;;FLAG_2
    end

    ;;FLAG_0
    (f64.const 2.336272045808782e+31)
    (i32.const 6903296)
    f32.convert_i32_s
    local.set 2
    local.set 3
)
(func $run (export "run")
    (local $temp i32)
    block
        (i32.const -1)
        i32.popcnt
        i64.extend_i32_u
        f64.convert_i64_u
        i32.trunc_f64_u
        i32.popcnt
        call $function_2639001328
        (br_table 0 1)
        ;;FLAG_4
    end

    ;;FLAG_3
    (f64.const 3880.120321207921)
    call $function_2639001328
    f64.floor
    f32.demote_f64
    i64.trunc_f32_u
    global.set $global_2284567271
)

)