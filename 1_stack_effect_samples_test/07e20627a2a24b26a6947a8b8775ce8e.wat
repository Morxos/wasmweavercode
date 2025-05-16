(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1366643303 (mut i32) (i32.const -1299972261))
(func $run (export "run")
    (local f64 i32)
    (local $temp i32)
    local.get 0
    local.get 0
    f64.abs
    f64.mul
    f32.demote_f64
    f32.abs
    ;;INSPECT
    i64.trunc_f32_u
    i64.popcnt
    (f32.const -6.310865334796661e+22)
    f32.neg
    i32.reinterpret_f32
    nop
    local.tee 1
    local.get 0
    i64.trunc_f64_u
    f32.convert_i64_s
    f32.trunc
    f32.trunc
    i32.trunc_f32_u
    i32.lt_u
    (f32.const -1.2861555737705107e+20)
    drop
    f32.reinterpret_i32
    i64.trunc_f32_u
    i64.ne
    i32.clz
    i32.clz
    global.set $global_1366643303
)

)