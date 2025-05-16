(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_2805309993 (mut f32) (f32.const 4.212710632102822e+18))
(func $run (export "run") (result f32)
    (local f32 f64 i64)
    (local $temp i32)
    i32.const 9
    loop $b_loop_3023908274 (param i32)
        (f32.const 3.917190571301356e+36)
        local.set 0
        (i32.const 4)
        f64.convert_i32_u
        i64.reinterpret_f64
        i64.clz
        f64.reinterpret_i64
        f64.sqrt
        f64.nearest
        local.set 1
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_3023908274
        drop
    end
    block
        (i32.const 239424737)
        local.get 0
        local.set 0
        i32.const 9
        loop $b_loop_796724969 (param i32)
            (i32.const 639830)
            f32.convert_i32_u
            global.set $global_2805309993
            local.get 0
            f32.neg
            f32.neg
            return
            local.set 0
            i32.const 1
            i32.sub
            local.tee $temp
            local.get $temp
            i32.const 0
            i32.gt_s
            br_if $b_loop_796724969
            drop
        end
        i32.extend8_s
        (i32.const -754522)
        i32.gt_s
        drop
    end

    (f32.const -2.3424486949369245e-27)
    i64.trunc_f32_s
    f64.convert_i64_u
    f64.sqrt
    local.set 1
    (i64.const 9536)
    local.set 2
    global.get $global_2805309993
    global.set $global_2805309993
    local.get 0
)

)