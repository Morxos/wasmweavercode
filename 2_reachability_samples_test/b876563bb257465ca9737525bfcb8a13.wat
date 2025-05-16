(module
(type $sig_function_3569133590 (func (param i32) (result i64)))
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3924635294 (mut f64) (f64.const 6.136191832233886e+18))
(func $function_3569133590 (export "function_3569133590") (param i32) (result i64)
    (local i64 i64)
    (local $temp i32)
    ;;FLAG_0
    (f32.const -5.339480338494987e-21)
    f64.promote_f32
    i64.trunc_f64_s
    local.tee 1
    local.tee 2
)
(func $run (export "run")
    (local i32 i64 i64)
    (local $temp i32)
    ;;FLAG_1
    (i32.const -36444128)
    local.tee 0
    i64.extend_i32_s
    local.set 1
    block
        ;;FLAG_3
        local.get 0
        f32.convert_i32_s
        (i32.const -115687)
        call $function_3569133590
        f64.convert_i64_s
        i64.trunc_f64_s
        local.tee 2
        local.set 1
        f64.promote_f32
        f64.floor
        f64.ceil
        global.set $global_3924635294
        return
    end

    ;;FLAG_2
)

)