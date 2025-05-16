(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_3679531915 (mut f64) (f64.const 5.594166774099524e+18))
(func $run (export "run") (result f32)
    (local f32 i64)
    (local $temp i32)
    block
        nop
        nop
        local.get 0
        f64.promote_f32
        global.set $global_3679531915
    end

    (f32.const 4.384778130861466e-12)
    i64.trunc_f32_s
    i64.extend16_s
    local.set 1
    nop
    nop
    (f32.const -2.8412100641848033e+18)
)

)