(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2099908824 i64 (i64.const 9155391346735283657))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    ;;FLAG_0
    (f32.const 1.1612153087021622e-33)
    i32.trunc_f32_u
    global.get $global_2099908824
    local.tee 0
    local.get 0
    i64.eq
    i32.shr_s
    (br_table 0)
    ;;FLAG_1
    br 0
)

)