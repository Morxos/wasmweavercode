(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_254610430 (mut i32) (i32.const -92872032))
(global $global_2168650615 (mut i64) (i64.const -9066435057899772475))
(global $global_1585845075 (mut f64) (f64.const 8.344993015184617e+18))
(func $run (export "run") (result f64)
    (local f64 i64)
    (local $temp i32)
    i32.const 9
    loop $b_loop_1545385230 (param i32)
        i32.const 9
        loop $b_loop_323659121 (param i32)
            i32.const 9
            loop $b_loop_3745819701 (param i32)
                nop
                (i64.const -689)
                f64.reinterpret_i64
                local.set 0
                local.get 0
                global.get $global_254610430
                br_if 3
                i64.reinterpret_f64
                global.set $global_2168650615
                i32.const 1
                i32.sub
                local.tee $temp
                local.get $temp
                i32.const 0
                i32.gt_s
                br_if $b_loop_3745819701
                drop
            end
            (f64.const 3.3258166572540914e-116)
            i64.trunc_f64_u
            i64.ctz
            f64.convert_i64_s
            f32.demote_f64
            i64.trunc_f32_s
            local.set 1
            i32.const 1
            i32.sub
            local.tee $temp
            local.get $temp
            i32.const 0
            i32.gt_s
            br_if $b_loop_323659121
            drop
        end
        global.get $global_254610430
        global.set $global_254610430
        (f64.const 8.357230463782183e+32)
        global.set $global_1585845075
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_1545385230
        drop
    end
    local.get 0
    global.set $global_1585845075
    (f64.const 2.1029754326555726e+96)
    global.get $global_254610430
    (f32.const -0.7939590811729431)
    i32.reinterpret_f32
    nop
    i32.gt_u
    i32.clz
    f64.convert_i32_u
    f64.max
)

)