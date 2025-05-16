(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3978423277 (mut f32) (f32.const -1.1753468688890593e+18))
(func $run (export "run")
    (local i64 i32)
    (local $temp i32)
    ;;FLAG_0
    (f32.const 3.997689454213653e-17)
    i64.trunc_f32_u
    (f32.const -16445581312.0)
    f32.floor
    f32.ceil
    (f32.const 6988.431640625)
    f32.sqrt
    f32.le
    f32.convert_i32_s
    global.set $global_3978423277
    i32.wrap_i64
    (br_table 0)
    ;;FLAG_1
    (f32.const -9.907268148229287e-13)
    f32.abs
    global.set $global_3978423277
    local.get 0
    i32.wrap_i64
    local.tee 1
    i32.eqz
    i32.extend16_s
    i32.clz
    (br_table 0)
    ;;FLAG_2
)

)