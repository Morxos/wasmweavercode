(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(table $tab_1914606038 1 funcref)
(global $global_3777844156 (mut f32) (f32.const 9.135051566330413e+18))
(func $run (export "run")
    (local f64 f32 i64)
    (local $temp i32)
    local.get 0
    i64.trunc_f64_u
    f64.reinterpret_i64
    f64.sqrt
    ;;INSPECT
    f32.demote_f64
    local.get 0
    i64.trunc_f64_u
    (f32.const 2.7369785195379082e-17)
    f32.trunc
    f32.abs
    f32.ceil
    local.tee 1
    i32.reinterpret_f32
    i32.clz
    (f32.const 2.5379204201266504e+37)
    global.set $global_3777844156
    f32.reinterpret_i32
    i32.trunc_f32_u
    f32.convert_i32_u
    i32.trunc_f32_s
    table.get $tab_1914606038
    drop
    local.set 2
    f32.sqrt
    drop
)

)