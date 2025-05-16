(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1375058211 (mut f32) (f32.const 6.10809110726076e+18))
(func $run (export "run")
    (local i64 f32)
    (local $temp i32)
    local.get 0
    i32.wrap_i64
    f32.convert_i32_s
    f32.sqrt
    f32.abs
    drop
    (f32.const 92.75994110107422)
    f32.trunc
    f32.sqrt
    i32.trunc_f32_u
    f32.convert_i32_s
    i32.trunc_f32_s
    f32.convert_i32_s
    i32.reinterpret_f32
    f32.convert_i32_s
    local.tee 1
    nop
    i32.trunc_f32_u
    f32.convert_i32_u
    global.set $global_1375058211
    (f32.const 4.948423765445582e+22)
    ;;INSPECT
    f64.promote_f32
    (f32.const -41289.046875)
    i32.reinterpret_f32
    drop
    drop
)

)