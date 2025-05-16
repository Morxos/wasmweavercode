(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_13658713 (mut i64) (i64.const -3264190034003648451))
(func $run (export "run")
    (local f32 f32 f32)
    (local $temp i32)
    ;;FLAG_0
    (i64.const 47)
    local.get 0
    (i64.const 88)
    global.set $global_13658713
    local.tee 1
    local.tee 2
    i64.trunc_f32_s
    i64.rotl
    i64.eqz
    (br_table 0)
    ;;FLAG_1
    br 0
)

)