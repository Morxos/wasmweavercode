(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1603774022 (mut f32) (f32.const 4.652495492003922e+18))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    (f32.const 2.108524838144934e+35)
    i32.reinterpret_f32
    f32.convert_i32_s
    i64.trunc_f32_u
    local.tee 0
    i32.wrap_i64
    f32.convert_i32_u
    i32.trunc_f32_s
    (f32.const 8.557170406295378e-32)
    global.set $global_1603774022
    i32.clz
    i32.clz
    f32.reinterpret_i32
    i32.reinterpret_f32
    f32.convert_i32_u
    i32.reinterpret_f32
    ;;INSPECT
    i32.popcnt
    i32.extend16_s
    (i32.const -781521929)
    f32.convert_i32_s
    drop
    i32.extend8_s
    f32.reinterpret_i32
    i32.reinterpret_f32
    f32.reinterpret_i32
    i64.trunc_f32_u
    i64.eqz
    f32.convert_i32_u
    global.set $global_1603774022
)

)