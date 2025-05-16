(module
(type $sig_function_2902418637 (func))
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_4082181767 (mut f64) (f64.const 8.556501059422685e+18))
(global $global_358782828 (mut f32) (f32.const -7.656845593959989e+18))
(global $global_4007812825 (mut i64) (i64.const -1591855026308009527))
(global $global_1130488470 (mut i32) (i32.const 1559895685))
(global $global_2627701548 (mut funcref) (ref.null func))
(func $function_2902418637 (export "function_2902418637")
    (local i32)
    (local $temp i32)
    (i64.const 8)
    f64.convert_i64_s
    local.get 0
    f64.convert_i32_u
    f64.eq
    f64.convert_i32_u
    i32.trunc_f64_s
    global.set $global_1130488470
    nop
)
(func $run (export "run") (result i64)
    (local i64 f32 funcref)
    (local $temp i32)
    i32.const 9
    loop $b_loop_2369998767 (param i32)
        global.get $global_4082181767
        (f32.const -4.471038045877608e-26)
        f32.abs
        global.set $global_358782828
        block (param f64)
            block (param f64) (result i64)
                f64.trunc
                global.set $global_4082181767
                (i32.const 338286045)
                drop
                (i32.const -9486)
                br_if 1
                (f64.const 3.0544668133022554e-31)
                i32.trunc_f64_u
                f64.convert_i32_u
                f64.trunc
                i64.reinterpret_f64
                return
                return
                drop
                (i64.const 0)
            end

            global.set $global_4007812825
            (i32.const -79)
            i32.ctz
            drop
        end

        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_2369998767
        drop
    end
    global.get $global_4082181767
    i64.reinterpret_f64
    local.tee 0
    local.set 0
    (f32.const 8.537306545235363e-20)
    call $function_2902418637
    local.set 1
    call $function_2902418637
    (f64.const 9.602994196140131e-172)
    f32.demote_f64
    global.set $global_358782828
    call $function_2902418637
    nop
    ref.func $function_2902418637
    call $function_2902418637
    local.tee 2
    global.set $global_2627701548
    local.get 0
)

)