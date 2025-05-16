(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_185655910 (mut i64) (i64.const -5794258727733778767))
(func $run (export "run") (result f64)
    (local f64 i32 i64)
    (local $temp i32)
    i32.const 9
    loop $b_loop_4150047986 (param i32)
        (i64.const 6164665)
        global.set $global_185655910
        local.get 0
        f64.sqrt
        local.set 0
        (i32.const 240)
        local.set 1
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_4150047986
        drop
    end
    (i32.const -1988555349)
    i32.ctz
    f32.convert_i32_u
    f32.nearest
    i32.trunc_f32_s
    drop
    (i64.const -24)
    i64.ctz
    local.set 2
    global.get $global_185655910
    i64.extend16_s
    i64.clz
    f64.convert_i64_s
)

)