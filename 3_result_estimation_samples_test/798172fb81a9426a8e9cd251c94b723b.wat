(module
(type $sig_function_335814605 (func))
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_3923582491 (mut f32) (f32.const 2.3268142693681725e+18))
(global $global_419315489 (mut f64) (f64.const -1.001777198688766e+18))
(global $global_2994263868 (mut funcref) (ref.null func))
(func $function_335814605 (export "function_335814605")
    (local f32)
    (local $temp i32)
    nop
    nop
    (f64.const 5.726801096199175e-296)
    i64.reinterpret_f64
    i64.ctz
    i32.wrap_i64
    i32.clz
    drop
    global.get $global_3923582491
    local.set 0
)
(func $run (export "run") (result f32)
    (local f64 f32 i32)
    (local $temp i32)
    i32.const 9
    loop $b_loop_3361317308 (param i32)
        nop
        (f32.const 1.0366844912543535e+30)
        global.set $global_3923582491
        (f64.const 3.3421260558255783e-282)
        local.tee 0
        i32.trunc_f64_u
        drop
        global.get $global_3923582491
        i32.reinterpret_f32
        f32.reinterpret_i32
        global.set $global_3923582491
        i32.const 9
        loop $b_loop_390511115 (param i32)
            i32.const 9
            loop $b_loop_832606051 (param i32)
                global.get $global_3923582491
                local.tee 1
                global.get $global_3923582491
                nop
                f32.floor
                f32.min
                br 3
                drop
                i32.const 1
                i32.sub
                local.tee $temp
                local.get $temp
                i32.const 0
                i32.gt_s
                br_if $b_loop_832606051
                drop
            end
            (i64.const -6068)
            i64.extend16_s
            (f32.const 3.5222550547403017e-38)
            f32.ceil
            (f32.const -8.105605414766401e+24)
            f32.min
            global.get $global_3923582491
            f32.lt
            drop
            f64.reinterpret_i64
            (f32.const 9.737163417238168e+31)
            global.set $global_3923582491
            f64.nearest
            drop
            (i32.const 56)
            global.get $global_3923582491
            f32.nearest
            (f32.const 181.07826232910156)
            f64.promote_f32
            f64.floor
            f64.floor
            f64.floor
            f64.floor
            f64.floor
            i32.trunc_f64_u
            drop
            (f64.const 5.5040743431106007e-126)
            local.set 0
            (f64.const 7.21326819156609e+124)
            f64.trunc
            f64.floor
            f64.abs
            drop
            block
                nop
                (f32.const 0.839984118938446)
                local.set 1
                (f32.const -3.042205344045922e+32)
                local.set 1
            end

            call $function_335814605
            local.set 1
            (i64.const 762)
            i64.extend16_s
            global.get $global_3923582491
            global.set $global_3923582491
            (f32.const 1.10622036962948e+28)
            local.get 0
            f64.floor
            f64.trunc
            global.set $global_419315489
            local.set 1
            f32.convert_i64_s
            nop
            i32.trunc_f32_u
            i32.rotr
            local.set 2
            i32.const 1
            i32.sub
            local.tee $temp
            local.get $temp
            i32.const 0
            i32.gt_s
            br_if $b_loop_390511115
            drop
        end
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_3361317308
        drop
    end
    (f32.const 4.271566922398051e-07)
    local.set 1
    ref.func $function_335814605
    block (param funcref)
        call $function_335814605
        (f32.const -7.45367904484233e+20)
        f64.promote_f32
        call $function_335814605
        local.set 0
        global.set $global_2994263868
    end

    call $function_335814605
    global.get $global_3923582491
)

)