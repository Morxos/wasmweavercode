(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1287664155 (mut f32) (f32.const -5.854570663930495e+18))
(func $run (export "run")
    (local f64 i32)
    (local $temp i32)
    nop
    local.get 0
    f32.demote_f64
    i64.trunc_f32_u
    f32.convert_i64_u
    i64.trunc_f32_s
    i64.ctz
    f64.convert_i64_u
    f64.neg
    f64.abs
    local.get 0
    ;;INSPECT
    f64.ne
    drop
    (f32.const 1.1597671934537758e+30)
    global.set $global_1287664155
    global.get $global_1287664155
    i32.reinterpret_f32
    local.set 1
)

)