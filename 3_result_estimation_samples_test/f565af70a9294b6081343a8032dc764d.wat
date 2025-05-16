(module
(type $sig_function_538306549 (func (param f32) (result f64)))
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_4091284341 (mut f32) (f32.const -7.064404539658469e+18))
(global $global_4164020369 (mut i32) (i32.const 988558019))
(func $function_538306549 (export "function_538306549") (param f32) (result f64)
    (local i32 i32)
    (local $temp i32)
    (i32.const -922321)
    f32.convert_i32_s
    f32.floor
    local.set 0
    (i64.const 84896252)
    i32.const 9
    loop $b_loop_2156371457 (param i32)
        (i32.const 874)
        i64.extend_i32_u
        f64.convert_i64_u
        i64.reinterpret_f64
        i64.eqz
        i64.extend_i32_u
        f32.convert_i64_s
        i32.reinterpret_f32
        local.tee 1
        local.tee 2
        global.set $global_4164020369
        (f64.const 307161.2246888035)
        i32.trunc_f64_s
        global.get $global_4091284341
        drop
        f64.convert_i32_u
        drop
        block
            (i64.const 9)
            f64.convert_i64_s
            (f64.const 1.2629793923640116e-16)
            f64.eq
            local.get 0
            local.set 0
            f64.convert_i32_u
            (f64.const 6.093536022680508e-291)
            f64.copysign
            f64.abs
            return
            drop
        end

        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_2156371457
        drop
    end
    f32.convert_i64_s
    i32.trunc_f32_u
    global.set $global_4164020369
    (i64.const 43508991)
    f64.reinterpret_i64
)
(func $run (export "run") (result i32)
    (local f32 funcref f64 i32)
    (local $temp i32)
    global.get $global_4091284341
    local.tee 0
    call $function_538306549
    (f64.const 4.6070661783954116e-61)
    f64.min
    ref.func $function_538306549
    local.tee 1
    block (param f64 funcref)
        local.set 1
        i32.trunc_f64_s
        f32.convert_i32_s
        i64.trunc_f32_s
        drop
    end

    ref.func $function_538306549
    (f32.const 8.699103295120697e+35)
    local.set 0
    local.set 1
    i32.const 9
    loop $b_loop_208098817 (param i32)
        (i32.const 383)
        nop
        f64.convert_i32_u
        f64.abs
        local.set 2
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_208098817
        drop
    end
    local.get 0
    drop
    global.get $global_4091284341
    f64.promote_f32
    f64.neg
    f64.trunc
    nop
    (i32.const 118494148)
    i32.clz
    i32.const 9
    loop $b_loop_3918617232 (param i32)
        (i32.const 1)
        ref.func $function_538306549
        local.set 1
        i32.extend8_s
        i32.extend8_s
        local.set 3
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_3918617232
        drop
    end
    local.set 3
    f64.sqrt
    f64.floor
    f64.floor
    i32.trunc_f64_u
    i32.clz
)

)