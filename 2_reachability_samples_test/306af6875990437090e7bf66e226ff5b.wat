(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_550554799 (mut i32) (i32.const 1374441050))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    ;;FLAG_0
    (i64.const -2192660)
    i64.popcnt
    i64.extend16_s
    f32.convert_i64_u
    local.get 0
    f32.convert_i64_u
    i64.trunc_f32_u
    f32.convert_i64_u
    f32.mul
    i32.reinterpret_f32
    global.set $global_550554799
    (i32.const -4)
    (br_table 0)
    ;;FLAG_1
    br 0
)

)