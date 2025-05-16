(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_355786935 (mut f32) (f32.const -2.9506889867182735e+18))
(global $global_1643030852 (mut i64) (i64.const -8102815821060551456))
(func $run (export "run") (result i64)
    (local i64)
    (local $temp i32)
    local.get 0
    i64.extend16_s
    i64.ctz
    i64.eqz
    i32.clz
    i32.clz
    f64.convert_i32_s
    i32.trunc_f64_u
    f32.convert_i32_s
    global.set $global_355786935
    (i64.const -460562)
    global.set $global_1643030852
    local.get 0
    f32.convert_i64_u
    i64.trunc_f32_s
)

)