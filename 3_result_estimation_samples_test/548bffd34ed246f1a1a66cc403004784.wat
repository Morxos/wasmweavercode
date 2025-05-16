(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(func $run (export "run") (result f64)
    (local f32 i32)
    (local $temp i32)
    i32.const 9
    loop $b_loop_3684045061 (param i32)
        (f32.const -1.279501477173573e+22)
        i32.reinterpret_f32
        i32.eqz
        f32.convert_i32_s
        local.set 0
        (f64.const 4.240572884611053e-35)
        i32.trunc_f64_u
        local.tee 1
        f64.convert_i32_s
        drop
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_3684045061
        drop
    end
    (i32.const -518)
    nop
    f32.convert_i32_u
    f32.abs
    f32.sqrt
    (f32.const -3.217355520923717e+19)
    f32.sub
    local.set 0
    (f32.const -1.4162303035419615e+30)
    f32.ceil
    f64.promote_f32
)

)