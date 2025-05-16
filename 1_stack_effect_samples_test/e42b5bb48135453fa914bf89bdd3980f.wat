(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_345592440 (mut f32) (f32.const -6.447692865685422e+18))
(global $global_1339107366 (mut i32) (i32.const -230144846))
(func $run (export "run")
    (local i64 i32)
    (local $temp i32)
    local.get 0
    local.get 0
    i64.eqz
    f32.reinterpret_i32
    f64.promote_f32
    local.get 0
    i64.clz
    f32.convert_i64_u
    i32.reinterpret_f32
    local.tee 1
    f32.convert_i32_u
    nop
    f32.sqrt
    global.set $global_345592440
    i32.trunc_f64_u
    f32.convert_i32_s
    i32.reinterpret_f32
    i32.extend8_s
    global.set $global_1339107366
    i64.eqz
    f32.reinterpret_i32
    i32.reinterpret_f32
    i32.clz
    local.get 0
    i64.eqz
    i32.div_s
    ;;INSPECT
    f32.convert_i32_s
    i32.trunc_f32_u
    global.set $global_1339107366
)

)