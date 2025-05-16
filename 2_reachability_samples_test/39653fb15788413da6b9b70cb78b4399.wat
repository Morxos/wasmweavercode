(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_818247263 (mut i64) (i64.const -5930436001067015938))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_3
        (i64.const 938)
        global.set $global_818247263
        local.get 0
        f32.convert_i32_s
        i32.trunc_f32_u
        (br_table 0 1)
        ;;FLAG_4
        local.get 0
        i32.popcnt
        f64.convert_i32_s
        i64.trunc_f64_s
        f32.convert_i64_u
        drop
    end

    ;;FLAG_1
    (i64.const -2884018155029052906)
    global.set $global_818247263
    (f32.const 80805313380352.0)
    i32.reinterpret_f32
    (br_table 0)
    ;;FLAG_2
    (i32.const -174)
    drop
    return
)

)