(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(table $tab_2155813465 5 funcref)
(global $global_3277132436 (mut i64) (i64.const 8614656509988255277))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    local.get 0
    global.get $global_3277132436
    global.get $global_3277132436
    i64.rem_s
    f32.convert_i64_s
    f32.trunc
    f32.trunc
    f32.copysign
    f32.sqrt
    ;;INSPECT
    local.get 0
    (f32.const -1.846676455563705e+24)
    f32.mul
    f32.eq
    table.get $tab_2155813465
    drop
)

)