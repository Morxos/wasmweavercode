(module
(type $sig_function_631215351 (func (param i32)))
(type $sig_run (func))
(import "env" "memory" (memory 1))
(table $tab_2862784072 7 funcref)
(global $global_1210730289 (mut i64) (i64.const 448861445139114142))
(global $global_3639792626 (mut funcref) (ref.null func))
(func $function_631215351 (export "function_631215351") (param i32)
    (local f32 i32)
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_2
        local.get 0
        nop
        f32.convert_i32_s
        local.set 1
        local.get 0
        (br_table 0 1)
        ;;FLAG_3
    end

    ;;FLAG_1
    global.get $global_1210730289
    global.set $global_1210730289
    local.get 0
    local.get 0
    table.get $tab_2862784072
    global.get $global_1210730289
    drop
    local.get 0
    i64.extend_i32_s
    drop
    (f32.const 8.343369159916934e-17)
    drop
    global.set $global_3639792626
    local.tee 2
    f32.reinterpret_i32
    i32.reinterpret_f32
    local.set 0
)
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_4
    (f64.const 3.2466324415642457e+245)
    f64.ceil
    i64.reinterpret_f64
    i64.eqz
    call $function_631215351
)

)