(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_2071899405 i64 (i64.const 677255731125650663))
(func $run (export "run") (result i64)
    (local f64 i64 i32)
    (local $temp i32)
    local.get 0
    (f64.const 1.0593559513440044e-284)
    f64.min
    global.get $global_2071899405
    i64.extend16_s
    f64.convert_i64_s
    f64.eq
    local.get 0
    f64.nearest
    i64.trunc_f64_s
    local.tee 1
    i64.ctz
    f32.convert_i64_u
    i32.trunc_f32_u
    f64.convert_i32_u
    f32.demote_f64
    (f64.const 1.1864865341190238e+110)
    f64.ceil
    f64.neg
    local.set 0
    i32.reinterpret_f32
    block (param i32 i32)
        i32.le_u
        i32.clz
        f32.reinterpret_i32
        f32.sqrt
        f32.abs
        i64.trunc_f32_u
        local.set 1
    end

    (i32.const 3658)
    local.set 2
    nop
    nop
    (f32.const 6.533340889444536e-24)
    f32.ceil
    i32.reinterpret_f32
    i64.extend_i32_s
)

)