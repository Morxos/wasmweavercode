(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2261089902 (mut i32) (i32.const -670346140))
(global $global_202617893 (mut f32) (f32.const -6.836982104325095e+18))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    (f32.const 1.2811897956953887e+33)
    i32.reinterpret_f32
    local.tee 0
    (i64.const -3469)
    (f32.const 1.8955990514720646e-27)
    local.get 0
    f32.convert_i32_u
    f32.lt
    global.set $global_2261089902
    i64.popcnt
    i64.eqz
    i32.lt_u
    f32.reinterpret_i32
    local.get 0
    nop
    f32.convert_i32_u
    f32.lt
    f32.convert_i32_u
    ;;INSPECT
    i32.reinterpret_f32
    f32.convert_i32_s
    global.set $global_202617893
)

)