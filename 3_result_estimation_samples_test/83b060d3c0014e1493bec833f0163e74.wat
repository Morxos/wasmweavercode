(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_2860258766 (mut f64) (f64.const 5.915129017968804e+17))
(func $run (export "run") (result i32)
    (local f64 i32)
    (local $temp i32)
    (i64.const -1)
    i64.extend8_s
    i64.clz
    drop
    (i64.const 39)
    (i64.const 0)
    i64.xor
    f64.reinterpret_i64
    local.tee 0
    global.set $global_2860258766
    block
        (i32.const -1650147)
        local.get 0
        i32.trunc_f64_s
        i32.extend16_s
        i32.shl
        drop
    end

    (i64.const 85)
    drop
    block
        (f32.const 15123592773632.0)
        f64.promote_f32
        global.set $global_2860258766
        (i32.const 240948295)
        i32.clz
        local.set 1
    end

    (f32.const -0.0036873165518045425)
    (f32.const 49340692.0)
    f32.ne
)

)