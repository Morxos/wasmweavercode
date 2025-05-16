(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2161906200 (mut f32) (f32.const 3.303894727635501e+18))
(global $global_3144355728 (mut i64) (i64.const 8376021175814844443))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    local.get 0
    f64.convert_i32_s
    i64.trunc_f64_u
    i64.ctz
    i64.eqz
    f64.convert_i32_s
    f64.sqrt
    f64.sqrt
    i64.trunc_f64_s
    f64.convert_i64_s
    f64.neg
    (f32.const 0.0013287439942359924)
    f32.abs
    global.set $global_2161906200
    ;;INSPECT
    i32.trunc_f64_u
    i32.eqz
    f32.reinterpret_i32
    i32.reinterpret_f32
    f32.convert_i32_s
    f32.abs
    f32.abs
    f32.trunc
    i64.trunc_f32_u
    f64.convert_i64_s
    i64.reinterpret_f64
    global.set $global_3144355728
)

)