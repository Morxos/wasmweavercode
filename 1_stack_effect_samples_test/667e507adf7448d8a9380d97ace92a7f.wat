(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_182176794 (mut f32) (f32.const -4.605093071829336e+18))
(global $global_1715293542 (mut i32) (i32.const 701704368))
(func $run (export "run")
    (local f32 f32)
    (local $temp i32)
    nop
    (f32.const 0.0)
    local.get 0
    (f32.const 4.1953941509138935e-19)
    f32.min
    f32.min
    f32.neg
    f32.nearest
    i64.trunc_f32_s
    global.get $global_182176794
    f32.neg
    local.tee 1
    global.set $global_182176794
    i64.eqz
    (i32.const 93)
    i32.div_s
    f32.convert_i32_u
    f32.floor
    ;;INSPECT
    (i32.const 8526)
    global.set $global_1715293542
    global.set $global_182176794
    nop
)

)