(module
(type $sig_function_1613496448 (func))
(type $sig_function_70164075 (func (param i32) (result f64)))
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_3164960841 (mut i32) (i32.const 1920637236))
(func $function_1613496448 (export "function_1613496448")
    (local f64 i64)
    (local $temp i32)
    local.get 0
    i64.trunc_f64_s
    i64.popcnt
    local.set 1
    local.get 0
    f64.floor
    i32.trunc_f64_s
    f32.reinterpret_i32
    i64.trunc_f32_u
    drop
    return
)
(func $function_70164075 (export "function_70164075") (param i32) (result f64)
    (local $temp i32)
    ref.func $function_1613496448
    drop
    (i64.const 1)
    f64.convert_i64_s
    f64.nearest
    f64.abs
)
(func $run (export "run") (result f32)
    (local f64 f32)
    (local $temp i32)
    (i32.const -26454495)
    i32.clz
    i32.clz
    block
        i32.const 9
        loop $b_loop_286334618 (param i32)
            i32.const 9
            loop $b_loop_465332106 (param i32)
                (i32.const -141624574)
                i32.ctz
                i32.clz
                i64.extend_i32_s
                f64.reinterpret_i64
                local.set 0
                i32.const 1
                i32.sub
                local.tee $temp
                local.get $temp
                i32.const 0
                i32.gt_s
                br_if $b_loop_465332106
                drop
            end
            (i64.const 0)
            f64.reinterpret_i64
            local.get 0
            f64.ne
            br_if 1
            (f32.const -22759862.0)
            drop
            global.get $global_3164960841
            (i32.const -350)
            i32.rotl
            global.set $global_3164960841
            nop
            (f64.const 2.4968070206776568e+148)
            drop
            i32.const 1
            i32.sub
            local.tee $temp
            local.get $temp
            i32.const 0
            i32.gt_s
            br_if $b_loop_286334618
            drop
        end
        (f64.const 1.0530647461564153e-190)
        call $function_1613496448
        i32.trunc_f64_s
        call $function_70164075
        f64.trunc
        drop
        (f32.const 30268020736.0)
        local.set 1
    end

    i32.extend16_s
    f32.convert_i32_s
)

)