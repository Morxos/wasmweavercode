(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_1128577155 (mut i64) (i64.const -3601082464118306))
(global $global_809408333 (mut i32) (i32.const -989515668))
(global $global_2661354897 (mut f32) (f32.const 3.7732064225447117e+18))
(func $run (export "run") (result f64)
    (local i32 i32 f32 i64)
    (local $temp i32)
    block
        i32.const 9
        loop $b_loop_1152736068 (param i32)
            i32.const 9
            loop $b_loop_749175325 (param i32)
                local.get 0
                local.tee 1
                global.get $global_1128577155
                i64.clz
                global.set $global_1128577155
                br_if 2
                i32.const 1
                i32.sub
                local.tee $temp
                local.get $temp
                i32.const 0
                i32.gt_s
                br_if $b_loop_749175325
                drop
            end
            (i32.const -248364150)
            if
                (f32.const -1.7713892930260045e-07)
                local.tee 2
                global.set $global_2661354897
                (f32.const -58015172.0)
                drop
            else
                (i32.const 908528275)
                local.set 0
                nop
                (i32.const 2056765764)
                global.set $global_809408333
            end

            (f32.const 4.51971395719719e+22)
            i32.reinterpret_f32
            i32.extend16_s
            global.set $global_809408333
            (i32.const 23)
            local.set 0
            i32.const 1
            i32.sub
            local.tee $temp
            local.get $temp
            i32.const 0
            i32.gt_s
            br_if $b_loop_1152736068
            drop
        end
        (i64.const -299571)
        (i64.const -10)
        i64.rem_u
        local.set 3
    end

    (f32.const 9.698085402703673e+33)
    (i64.const 6)
    f64.reinterpret_i64
    f64.nearest
    i32.trunc_f64_s
    global.set $global_809408333
    (i32.const 743013916)
    (i32.const 2064009)
    i32.or
    f32.convert_i32_u
    i64.trunc_f32_s
    i64.clz
    i64.clz
    i64.extend16_s
    i64.eqz
    i32.clz
    i32.eqz
    i32.clz
    (i32.const -45578420)
    i32.rotr
    i32.clz
    i32.extend8_s
    f32.convert_i32_u
    i64.trunc_f32_u
    i64.extend8_s
    i64.extend32_s
    local.set 3
    drop
    block
        (i32.const 4805145)
        f64.convert_i32_u
        i64.trunc_f64_u
        (i64.const -108)
        i64.rem_u
        f64.convert_i64_u
        i64.trunc_f64_u
        local.set 3
    end

    (f64.const 6.366465857256785e+164)
    (f32.const 0.0018728100694715977)
    i64.trunc_f32_u
    f64.convert_i64_u
    f64.gt
    f64.convert_i32_u
)

)