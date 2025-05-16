(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3785227800 i64 (i64.const 3832081944664717128))
(global $global_1464935088 (mut f32) (f32.const -2.73232955085475e+18))
(func $run (export "run")
    (local f32 i64)
    (local $temp i32)
    local.get 0
    f32.nearest
    global.get $global_3785227800
    nop
    local.tee 1
    i64.eqz
    local.get 0
    (i32.const 1)
    f32.reinterpret_i32
    f32.lt
    ;;INSPECT
    i32.div_s
    f32.convert_i32_u
    f32.trunc
    f32.lt
    f32.convert_i32_u
    local.set 0
    (i32.const -789)
    f32.convert_i32_u
    global.set $global_1464935088
)

)