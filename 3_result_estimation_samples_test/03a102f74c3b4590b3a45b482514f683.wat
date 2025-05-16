(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_885180819 (mut f64) (f64.const 5.584975755759874e+18))
(func $run (export "run") (result f32)
    (local i32 f32)
    (local $temp i32)
    i32.const 9
    loop $b_loop_393541580 (param i32)
        (f32.const -1.415359740828406e-24)
        drop
        (f64.const 4.398010275914876e-273)
        f64.trunc
        f64.nearest
        global.set $global_885180819
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_393541580
        drop
    end
    local.get 0
    nop
    f32.convert_i32_s
    local.tee 1
)

)