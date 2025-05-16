(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_4130582992 (mut f64) (f64.const -1.7520205468815032e+18))
(func $run (export "run") (result i64)
    (local f64 f64 f64 f64)
    (local $temp i32)
    (f64.const 6.490469739596216e-186)
    i32.trunc_f64_u
    (f64.const 2.2394492664825522e-138)
    f64.sqrt
    nop
    local.set 0
    (i64.const 1450)
    i64.clz
    f32.convert_i64_u
    f32.ceil
    f32.floor
    i64.trunc_f32_s
    f64.reinterpret_i64
    (f32.const -1054157824.0)
    drop
    local.tee 1
    i64.trunc_f64_s
    f64.reinterpret_i64
    local.tee 2
    global.set $global_4130582992
    f32.convert_i32_s
    (f32.const 9545.3037109375)
    block (param f32) (result i64)
        i32.trunc_f32_s
        (i32.const 80143)
        i32.rotl
        global.get $global_4130582992
        i64.trunc_f64_u
        f32.convert_i64_u
        f32.sqrt
        f32.floor
        drop
        i64.extend_i32_s
        f64.convert_i64_s
        global.set $global_4130582992
        nop
        nop
        (i64.const 9913)
        i64.ctz
    end

    f64.reinterpret_i64
    local.tee 3
    drop
    f32.floor
    i64.trunc_f32_s
)

)