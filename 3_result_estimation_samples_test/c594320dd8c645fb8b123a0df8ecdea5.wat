(module
(type $sig_function_2801268860 (func (param f32 i64) (result i64)))
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_2316413807 (mut i32) (i32.const 711273271))
(global $global_1648363247 (mut f32) (f32.const -8.717492234473177e+18))
(func $function_2801268860 (export "function_2801268860") (param f32 i64) (result i64)
    (local $temp i32)
    (f32.const 7.527095284733908e+37)
    f64.promote_f32
    f64.sqrt
    f64.abs
    f64.trunc
    i64.reinterpret_f64
)
(func $run (export "run") (result f64)
    (local i32 f32 f64 f64)
    (local $temp i32)
    global.get $global_2316413807
    f64.convert_i32_u
    i32.trunc_f64_u
    if
        (i32.const 54048)
        f32.reinterpret_i32
        global.set $global_1648363247
        i32.const 9
        loop $b_loop_2042205653 (param i32)
            (i32.const 6471)
            global.set $global_2316413807
            (i64.const -31193)
            f32.convert_i64_s
            (i64.const -7643739)
            call $function_2801268860
            f64.reinterpret_i64
            f64.abs
            f64.floor
            return
            (f64.const 7.468470522865437e+25)
            f64.lt
            i32.extend8_s
            i64.extend_i32_u
            i32.wrap_i64
            br_if 1
            (f64.const 1.795183768414381e+233)
            return
            local.get 0
            drop
            drop
            i32.const 1
            i32.sub
            local.tee $temp
            local.get $temp
            i32.const 0
            i32.gt_s
            br_if $b_loop_2042205653
            drop
        end
        ref.func $function_2801268860
        drop
    else
        (i32.const -9094)
        local.set 0
        nop
        global.get $global_2316413807
        if
            local.get 0
            block
                (f64.const 0.0)
                i32.trunc_f64_s
                global.set $global_2316413807
                nop
                nop
            end

            f32.reinterpret_i32
            local.tee 1
            drop
            (i64.const 43)
            f64.reinterpret_i64
            i32.trunc_f64_s
            br_if 0
        else
            (i32.const -412519251)
            i32.popcnt
            f32.reinterpret_i32
            i32.reinterpret_f32
            f32.convert_i32_s
            drop
            (f64.const 1.2358045197060664e+105)
            (f32.const 3.5405964484018176e+16)
            f32.abs
            f64.promote_f32
            f64.copysign
            drop
        end

        (i32.const 469)
        f64.convert_i32_u
        f64.floor
        local.set 2
    end

    (f64.const 1.0167899729927545e-289)
    local.tee 3
)

)