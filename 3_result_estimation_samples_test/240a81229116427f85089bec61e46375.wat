(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_3967373044 (mut i32) (i32.const 853908396))
(func $run (export "run") (result i64)
    (local i64 f64 i32)
    (local $temp i32)
    (i64.const -4)
    local.set 0
    (i32.const 4)
    i64.extend_i32_u
    (f64.const 1.3198127691847428e-256)
    i32.trunc_f64_u
    if (param i64) (result i64)
        i32.wrap_i64
        i32.clz
        i64.extend_i32_s
        i64.extend16_s
        local.set 0
        (i64.const -2)
    else
        (f32.const -8.799671129028526e-15)
        (f64.const 6.41007686270308e-186)
        local.set 1
        local.get 0
        i32.wrap_i64
        global.get $global_3967373044
        i32.clz
        (i32.const 11)
        i32.shl
        local.set 2
        f32.convert_i32_u
        f32.ceil
        f32.eq
        drop
        nop
    end

    f64.convert_i64_s
    i32.trunc_f64_s
    i32.clz
    local.set 2
    nop
    (i64.const 6074653798041288479)
)

)