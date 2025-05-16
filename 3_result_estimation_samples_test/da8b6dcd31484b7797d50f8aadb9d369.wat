(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_4228990650 (mut i64) (i64.const -7387474989080306758))
(global $global_1793842978 (mut f64) (f64.const 3.825284305436891e+18))
(func $run (export "run") (result f64)
    (local i64 i64)
    (local $temp i32)
    global.get $global_4228990650
    f64.convert_i64_u
    f64.floor
    f64.nearest
    global.set $global_1793842978
    (i64.const 981)
    global.set $global_4228990650
    (f32.const -1.352481864741518e+28)
    (i64.const -7985)
    i64.popcnt
    i32.const 9
    loop $b_loop_763921687 (param i32)
        (i64.const 0)
        i64.ctz
        local.set 0
        nop
        block
            (i64.const 1236282)
            drop
            local.get 0
            i64.ctz
            i64.extend32_s
            i64.ctz
            global.get $global_4228990650
            i64.le_u
            (br_table 0)
            (i64.const -390540)
            i32.wrap_i64
            br_if 0
        end

        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_763921687
        drop
    end
    local.tee 1
    global.get $global_4228990650
    i64.or
    drop
    f32.abs
    f64.promote_f32
)

)