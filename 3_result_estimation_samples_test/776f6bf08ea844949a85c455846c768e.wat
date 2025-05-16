(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_608804665 (mut f32) (f32.const -6.483960943922381e+17))
(func $run (export "run") (result i32)
    (local f32 f64 f64)
    (local $temp i32)
    i32.const 9
    loop $b_loop_906607343 (param i32)
        nop
        (f64.const 1.78779325732836e+273)
        f64.floor
        f64.nearest
        (i64.const -54164537)
        nop
        i64.eqz
        i32.clz
        i32.eqz
        f32.convert_i32_u
        f32.nearest
        i64.trunc_f32_s
        drop
        drop
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_906607343
        drop
    end
    (i32.const 507841)
    f32.convert_i32_u
    local.set 0
    nop
    local.get 0
    f32.neg
    local.set 0
    (f32.const -2.0564894231966946e-10)
    f64.promote_f32
    local.set 1
    block
        nop
        (f32.const -2.0210859902941266e+18)
        global.set $global_608804665
        (i32.const -68462982)
        i32.extend8_s
        br_if 0
    end

    (f64.const 4.217981831753411e-154)
    f64.nearest
    f64.sqrt
    local.tee 2
    drop
    nop
    (i32.const -10)
)

)