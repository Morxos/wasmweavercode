(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2385215894 (mut i32) (i32.const -720588662))
(global $global_807385450 (mut i64) (i64.const 333942154739429451))
(func $run (export "run")
    (local f64)
    (local $temp i32)
    global.get $global_2385215894
    i64.extend_i32_u
    ;;INSPECT
    global.set $global_807385450
    (f32.const -1.0216539603679723e+22)
    f32.neg
    f32.nearest
    f64.promote_f32
    f64.floor
    f64.floor
    f64.sqrt
    f64.nearest
    local.set 0
    (i32.const 284185467)
    i32.eqz
    i32.extend16_s
    i32.extend8_s
    f32.reinterpret_i32
    i32.trunc_f32_u
    i64.extend_i32_u
    i64.eqz
    i32.clz
    i32.clz
    i32.clz
    i32.clz
    i32.extend8_s
    i32.clz
    i32.clz
    drop
)

)