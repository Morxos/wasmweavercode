(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_481614402 (mut f64) (f64.const -1.4496359870264627e+18))
(func $run (export "run") (result i32)
    (local f32)
    (local $temp i32)
    i32.const 9
    loop $b_loop_1982756117 (param i32)
        nop
        (i64.const 42337506)
        i32.wrap_i64
        i32.extend16_s
        f64.convert_i32_u
        i32.trunc_f64_s
        local.get 0
        f64.promote_f32
        f64.floor
        i64.trunc_f64_u
        f64.convert_i64_s
        f64.floor
        i32.trunc_f64_s
        i32.rotl
        i32.eqz
        f32.convert_i32_u
        f32.trunc
        f64.promote_f32
        global.set $global_481614402
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_1982756117
        drop
    end
    (f64.const 0.0002384823161259764)
    drop
    (i32.const -53161775)
    local.get 0
    f32.ceil
    drop
)

)