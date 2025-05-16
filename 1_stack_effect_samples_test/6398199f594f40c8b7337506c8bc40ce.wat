(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1884845788 (mut i32) (i32.const 1780389244))
(global $global_4117231790 (mut f32) (f32.const -3.8377351107114435e+18))
(func $run (export "run")
    (local i32 i32)
    (local $temp i32)
    local.get 0
    f32.convert_i32_u
    f32.neg
    i32.reinterpret_f32
    i32.eqz
    global.get $global_1884845788
    i32.lt_s
    f32.convert_i32_s
    f32.trunc
    i32.reinterpret_f32
    f32.convert_i32_s
    i32.trunc_f32_s
    local.tee 1
    f32.convert_i32_u
    (f32.const -1.3513139974781619e-24)
    ;;INSPECT
    f32.lt
    f32.reinterpret_i32
    global.set $global_4117231790
    local.get 0
    f32.convert_i32_u
    local.get 0
    f32.convert_i32_u
    f32.max
    f32.floor
    f32.neg
    global.set $global_4117231790
)

)