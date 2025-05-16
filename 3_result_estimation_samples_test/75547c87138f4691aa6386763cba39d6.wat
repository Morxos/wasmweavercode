(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_1593753730 (mut i64) (i64.const -6485169083816313207))
(func $run (export "run") (result f64)
    (local i64 f32 f64)
    (local $temp i32)
    i32.const 9
    loop $b_loop_2820358950 (param i32)
        nop
        (i64.const -5296747424006994234)
        nop
        local.set 0
        (f32.const 1.6008612187259142e-20)
        i32.trunc_f32_u
        i32.popcnt
        local.get 0
        global.set $global_1593753730
        i64.extend_i32_u
        local.set 0
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_2820358950
        drop
    end
    (f32.const -1.0207995594242337e+26)
    f32.ceil
    local.set 1
    local.get 0
    i64.extend32_s
    i64.extend8_s
    f64.reinterpret_i64
    local.tee 2
    return
)

)