(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_504525401 (mut f64) (f64.const -3.036377425836245e+18))
(global $global_321555685 (mut i64) (i64.const -6791045576039911703))
(func $run (export "run") (result f64)
    (local i32)
    (local $temp i32)
    block
        global.get $global_504525401
        f64.abs
        i64.trunc_f64_s
        global.set $global_321555685
        (i64.const -30217553)
        i64.extend8_s
        i64.extend16_s
        global.set $global_321555685
    end

    global.get $global_504525401
    global.set $global_504525401
    block
        (f64.const 3.570479870258205e+220)
        f64.nearest
        drop
        (i32.const -907)
        local.set 0
    end

    (f32.const -3.7908159161232934e-34)
    f64.promote_f32
    (f64.const 3.0311261604799286e+67)
    f64.le
    local.set 0
    global.get $global_504525401
)

)