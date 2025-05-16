(module
(type $sig_function_3070804160 (func))
(type $sig_function_1085862236 (func))
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_1549924308 (mut f32) (f32.const -6.214439170434138e+18))
(global $global_2513696739 (mut f64) (f64.const 8.04716045510211e+18))
(global $global_3204487576 (mut funcref) (ref.null func))
(func $function_3070804160 (export "function_3070804160")
    (local $temp i32)
    (i32.const 2030)
    i64.extend_i32_u
    (i64.const -8480965)
    i64.rem_u
    f32.convert_i64_s
    global.set $global_1549924308
)
(func $function_1085862236 (export "function_1085862236")
    (local i64)
    (local $temp i32)
    (f32.const 4.956892300503539e-25)
    f32.floor
    f32.neg
    f32.trunc
    i64.trunc_f32_s
    local.set 0
)
(func $run (export "run") (result i32)
    (local f32 i32 f64 f32)
    (local $temp i32)
    i32.const 9
    loop $b_loop_1851547796 (param i32)
        i32.const 9
        loop $b_loop_1896760176 (param i32)
            (i32.const -658280984)
            i32.clz
            i32.extend16_s
            f64.convert_i32_u
            f64.sqrt
            f64.neg
            (f64.const 1.3805362586717232e+104)
            call $function_3070804160
            f64.min
            drop
            (i64.const 3220)
            i32.wrap_i64
            f32.convert_i32_s
            f32.abs
            (f64.const 1.1418780379275459e-26)
            drop
            f32.abs
            f32.floor
            i64.trunc_f32_s
            (i64.const -7072)
            i64.ge_u
            return
            ref.func $function_3070804160
            nop
            call $function_1085862236
            (f64.const 7.533822315717952e-172)
            global.set $global_2513696739
            drop
            nop
            i64.extend_i32_s
            drop
            i32.const 1
            i32.sub
            local.tee $temp
            local.get $temp
            i32.const 0
            i32.gt_s
            br_if $b_loop_1896760176
            drop
        end
        global.get $global_1549924308
        local.set 0
        local.get 0
        f32.floor
        local.get 0
        f64.promote_f32
        f64.floor
        call $function_3070804160
        i32.trunc_f64_u
        i32.ctz
        f32.convert_i32_u
        f32.eq
        i32.eqz
        local.tee 1
        i32.eqz
        i32.clz
        i32.extend16_s
        drop
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_1851547796
        drop
    end
    (f64.const 1.1474657402979429e-241)
    global.set $global_2513696739
    ref.func $function_3070804160
    (i32.const -15725818)
    (f64.const 425016386788.5852)
    local.set 2
    f32.reinterpret_i32
    local.tee 3
    (i64.const 5107611465648046539)
    i32.wrap_i64
    nop
    i64.extend_i32_s
    global.get $global_1549924308
    local.get 0
    f32.neg
    f32.floor
    call $function_3070804160
    f32.neg
    local.get 0
    f32.min
    f32.min
    i32.reinterpret_f32
    f64.convert_i32_u
    global.set $global_2513696739
    f32.convert_i64_s
    f32.copysign
    f32.sqrt
    ref.func $function_3070804160
    (f32.const 1.928995629896235e-09)
    i32.trunc_f32_u
    f32.convert_i32_u
    i64.trunc_f32_s
    i64.clz
    drop
    (f64.const 0.0)
    i32.trunc_f64_s
    f32.convert_i32_u
    f32.ceil
    nop
    f64.promote_f32
    f64.trunc
    f64.trunc
    i32.trunc_f64_s
    i32.extend16_s
    i32.extend16_s
    f64.convert_i32_s
    f32.demote_f64
    f64.promote_f32
    i32.trunc_f64_u
    drop
    drop
    global.set $global_1549924308
    ref.func $function_3070804160
    global.set $global_3204487576
    (f32.const -1.26253418324582e-38)
    f32.neg
    nop
    local.set 0
    drop
    (f64.const 3.7974992021503607e+143)
    nop
    drop
    (f32.const 2.2631493123981272e-08)
    (i64.const -8220164)
    f32.convert_i64_s
    f32.copysign
    f32.floor
    f64.promote_f32
    i32.trunc_f64_s
)

)