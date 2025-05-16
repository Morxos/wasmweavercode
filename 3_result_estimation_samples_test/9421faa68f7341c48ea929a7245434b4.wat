(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_2336096119 (mut f64) (f64.const 5.201496601452059e+18))
(global $global_1661290286 (mut i32) (i32.const -1193203798))
(func $run (export "run") (result i32)
    (local i32 f64)
    (local $temp i32)
    block
        (f64.const 1.1146055510681809e+296)
        f64.neg
        block
            (i32.const -158363)
            local.get 0
            i32.lt_s
            i32.clz
            f32.convert_i32_u
            i32.reinterpret_f32
            f64.convert_i32_s
            i32.trunc_f64_u
            f64.convert_i32_u
            f64.trunc
            global.set $global_2336096119
        end

        local.set 1
        local.get 0
        global.set $global_1661290286
    end

    (f32.const 33462.36328125)
    i64.trunc_f32_u
    i64.extend8_s
    f32.convert_i64_u
    nop
    i32.reinterpret_f32
)

)