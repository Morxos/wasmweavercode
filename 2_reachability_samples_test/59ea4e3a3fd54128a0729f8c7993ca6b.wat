(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2844276598 (mut i32) (i32.const 1427081292))
(global $global_478108653 (mut f32) (f32.const 7.36150467611145e+18))
(func $run (export "run")
    (local i32 i64)
    (local $temp i32)
    ;;FLAG_0
    local.get 0
    (i64.const 40915)
    local.set 1
    global.set $global_2844276598
    (i64.const -8199769)
    i32.wrap_i64
    f32.convert_i32_u
    global.set $global_478108653
    br 0
)

)