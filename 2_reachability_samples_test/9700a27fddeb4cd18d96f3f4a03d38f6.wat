(module
(type $sig_function_2209992124 (func))
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3686884049 (mut f32) (f32.const -2.2039735317781545e+18))
(func $function_2209992124 (export "function_2209992124")
    (local f32 f32)
    (local $temp i32)
    ;;FLAG_0
    global.get $global_3686884049
    local.tee 0
    local.tee 1
    global.get $global_3686884049
    f32.mul
    f32.nearest
    i32.reinterpret_f32
    f32.convert_i32_u
    local.set 0
)
(func $run (export "run")
    (local i32 i64)
    (local $temp i32)
    ;;FLAG_1
    (f32.const 1.719581804211303e-26)
    i32.reinterpret_f32
    local.tee 0
    i64.extend_i32_u
    call $function_2209992124
    local.tee 1
    local.set 1
    (i32.const 293)
    (br_table 0)
    ;;FLAG_2
    call $function_2209992124
)

)