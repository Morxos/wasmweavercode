(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_4173152047 (mut f32) (f32.const -2.7293935799306813e+18))
(func $run (export "run") (result i64)
    (local $temp i32)
    i32.const 9
    loop $b_loop_611195017 (param i32)
        global.get $global_4173152047
        f64.promote_f32
        f64.ceil
        drop
        global.get $global_4173152047
        global.set $global_4173152047
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_611195017
        drop
    end
    (i64.const 855511551911727687)
    i64.extend8_s
    f64.reinterpret_i64
    i32.trunc_f64_s
    i64.extend_i32_u
)

)