(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_150123911 (mut f64) (f64.const -2.1645526031774781e+18))
(global $global_3203377776 (mut f32) (f32.const 8.597574548545602e+18))
(func $run (export "run") (result i32)
    (local i64 f64)
    (local $temp i32)
    block
        nop
        (i64.const -1911815)
        i64.extend32_s
        local.set 0
        local.get 0
        f64.convert_i64_s
        i32.trunc_f64_s
        br_if 0
        (i32.const 85783)
        (i64.const -101599902)
        i64.ctz
        f64.convert_i64_s
        nop
        i32.trunc_f64_s
        global.get $global_150123911
        i64.reinterpret_f64
        drop
        i32.rotl
        return
        f32.reinterpret_i32
        f32.sqrt
        f32.nearest
        global.get $global_150123911
        i64.reinterpret_f64
        drop
        global.set $global_3203377776
    end

    (f64.const 7.493089776975864e-306)
    f64.neg
    local.set 1
    (f32.const 8.408468787770163e+16)
    i64.trunc_f32_s
    global.get $global_150123911
    local.set 1
    i64.eqz
)

)