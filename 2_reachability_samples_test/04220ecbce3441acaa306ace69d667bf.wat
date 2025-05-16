(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_738148813 (mut i64) (i64.const 2038698898131230297))
(func $run (export "run")
    (local i64 i64)
    (local $temp i32)
    ;;FLAG_0
    (i32.const 317901)
    nop
    f32.convert_i32_s
    local.get 0
    f64.reinterpret_i64
    i64.reinterpret_f64
    local.tee 1
    f32.convert_i64_u
    f32.le
    (br_table 0)
    ;;FLAG_1
    local.get 0
    global.set $global_738148813
    br 0
)

)