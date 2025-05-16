(module
(type $sig_function_4077382733 (func))
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_938698089 (mut i64) (i64.const -748024997636171435))
(global $global_2842799796 (mut f32) (f32.const 5.065879978210492e+18))
(global $global_2394477433 (mut f64) (f64.const -3.903100631768146e+17))
(func $function_4077382733 (export "function_4077382733")
    (local i32)
    (local $temp i32)
    (i32.const 9393)
    block
        i32.const 9
        loop $b_loop_3296177912 (param i32)
            (i32.const -97)
            local.set 0
            (i32.const 5874)
            i64.extend_i32_u
            nop
            i64.ctz
            global.set $global_938698089
            i32.const 1
            i32.sub
            local.tee $temp
            local.get $temp
            i32.const 0
            i32.gt_s
            br_if $b_loop_3296177912
            drop
        end
        global.get $global_938698089
        i64.extend32_s
        i64.extend16_s
        i64.eqz
        local.get 0
        i32.rotr
        f32.reinterpret_i32
        f32.abs
        (f64.const 1.105528957047217e+221)
        i64.reinterpret_f64
        i64.extend8_s
        (f32.const -3.9261832237243652)
        f32.neg
        global.set $global_2842799796
        f32.convert_i64_s
        (i64.const -43183496)
        i64.extend16_s
        i64.eqz
        i64.extend_i32_u
        f64.convert_i64_u
        i32.trunc_f64_s
        i32.clz
        drop
        f32.eq
        drop
    end

    (i64.const -4)
    f64.convert_i64_u
    global.set $global_2394477433
    (f32.const -2.2104876035995263e-25)
    i32.reinterpret_f32
    i32.shr_u
    local.get 0
    i64.extend_i32_u
    i64.clz
    f64.convert_i64_s
    i32.trunc_f64_s
    i32.shl
    i32.popcnt
    br_if 0
)
(func $run (export "run") (result f64)
    (local $temp i32)
    nop
    (i64.const 220241914)
    f32.convert_i64_u
    i64.trunc_f32_u
    f64.convert_i64_u
    call $function_4077382733
)

)