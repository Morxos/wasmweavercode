(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_4242583447 (mut f32) (f32.const -5.695254177844822e+18))
(func $run (export "run")
    (local f64)
    (local $temp i32)
    ;;FLAG_0
    (f64.const 1.0716805415652037e+66)
    local.set 0
    block
        ;;FLAG_3
        local.get 0
        i64.reinterpret_f64
        i32.wrap_i64
        f32.convert_i32_s
        global.set $global_4242583447
    end

    ;;FLAG_1
    (f64.const 4.184371870405493e-303)
    i32.trunc_f64_s
    f32.reinterpret_i32
    i32.trunc_f32_u
    br_if 0
    ;;FLAG_2
    return
)

)