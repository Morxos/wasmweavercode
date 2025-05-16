(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3371294287 (mut i64) (i64.const -4195477405134956286))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    ;;FLAG_0
    (f32.const -4.192451947800932e-30)
    nop
    local.get 0
    i64.ctz
    i64.extend16_s
    i64.extend8_s
    global.set $global_3371294287
    drop
    br 0
)

)