(module
(type $sig_function_2584576715 (func))
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_963187279 (mut f32) (f32.const -3.111793553588617e+18))
(global $global_158303756 (mut f64) (f64.const -1.990654600359592e+18))
(func $function_2584576715 (export "function_2584576715")
    (local $temp i32)
    (i64.const -6779369458846360318)
    drop
    global.get $global_963187279
    global.get $global_963187279
    f32.floor
    f32.le
    (br_table 0)
    ;;FLAG_0
)
(func $run (export "run")
    (local f64 i32)
    (local $temp i32)
    ;;FLAG_1
    block
        ;;FLAG_3
        (f64.const 7.468657438849179e+158)
        local.set 0
        (f64.const 2.3446721251298403e-256)
        f64.ceil
        f64.floor
        i32.trunc_f64_s
        local.set 1
        nop
        local.get 0
        i64.reinterpret_f64
        i64.eqz
        (br_table 0 1)
        ;;FLAG_4
    end

    ;;FLAG_2
    (f64.const 2.6430738514947915e+98)
    f64.trunc
    (i32.const -435806)
    i64.extend_i32_s
    i64.clz
    nop
    i64.eqz
    drop
    i64.reinterpret_f64
    i64.extend16_s
    f32.convert_i64_u
    i32.trunc_f32_u
    call $function_2584576715
    f64.convert_i32_s
    f64.sqrt
    f64.floor
    i32.trunc_f64_s
    i64.extend_i32_s
    i64.eqz
    global.get $global_963187279
    f32.nearest
    f32.nearest
    f32.nearest
    f64.promote_f32
    global.set $global_158303756
    i32.clz
    local.set 1
)

)