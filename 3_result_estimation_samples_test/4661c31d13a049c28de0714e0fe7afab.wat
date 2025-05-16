(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_222057886 f64 (f64.const 3.1528973674890035e+17))
(global $global_4009811858 (mut i64) (i64.const -5409113404988652315))
(global $global_2851969334 (mut i32) (i32.const 1919866872))
(global $global_783999301 (mut f64) (f64.const 7.685926611197315e+18))
(func $run (export "run") (result i64)
    (local i32 i32)
    (local $temp i32)
    global.get $global_222057886
    f64.floor
    local.get 0
    (f32.const 5.54248068533578e+26)
    f32.abs
    (i64.const 8275)
    global.set $global_4009811858
    (f32.const 1.5025875818600877e+37)
    drop
    f32.sqrt
    local.get 0
    i32.clz
    i32.clz
    f32.convert_i32_u
    i64.trunc_f32_s
    i64.clz
    global.set $global_4009811858
    local.get 0
    i32.eqz
    i32.clz
    global.set $global_2851969334
    global.get $global_222057886
    f64.abs
    f64.sqrt
    global.set $global_783999301
    global.get $global_222057886
    i64.reinterpret_f64
    i64.clz
    block (param f32 i64)
        i64.clz
        f32.convert_i64_u
        f32.eq
        nop
        local.tee 1
        br_if 0
    end

    i32.clz
    i32.clz
    i32.extend8_s
    f64.convert_i32_u
    global.set $global_783999301
    f64.floor
    drop
    (i64.const 6393277)
)

)