(module
(type $sig_function_735273204 (func (param i32 i32) (result i32)))
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1255245980 (mut f32) (f32.const -2.9655906678095217e+18))
(global $global_520066106 (mut f64) (f64.const 8.112037643717462e+18))
(global $global_2478023752 (mut i64) (i64.const -1846611676514548252))
(func $function_735273204 (export "function_735273204") (param i32 i32) (result i32)
    (local $temp i32)
    ;;FLAG_0
    (i32.const -35)
    nop
    f32.reinterpret_i32
    drop
    global.get $global_1255245980
    (f64.const 6.340197860239526e-235)
    global.set $global_520066106
    (i64.const -7822)
    nop
    global.set $global_2478023752
    i32.reinterpret_f32
)
(func $run (export "run")
    (local f64)
    (local $temp i32)
    block
        ;;FLAG_3
        (f64.const 1.7340451925704413e-161)
        f64.ceil
        i32.trunc_f64_u
        (i32.const 7)
        call $function_735273204
        (br_table 1 0)
        ;;FLAG_4
    end

    ;;FLAG_1
    local.get 0
    drop
    (f32.const 85983056.0)
    i32.reinterpret_f32
    (br_table 0)
    ;;FLAG_2
    local.get 0
    global.set $global_520066106
)

)