(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_2472878595 (mut i64) (i64.const 3600170655823486039))
(global $global_2435577119 (mut f64) (f64.const -6.230994734507518e+18))
(func $run (export "run") (result f64)
    (local i64)
    (local $temp i32)
    global.get $global_2472878595
    i64.extend8_s
    local.tee 0
    block
        (i32.const 2620)
        i64.extend_i32_u
        i64.extend32_s
        global.set $global_2472878595
        (i32.const -814)
        i64.extend_i32_u
        global.get $global_2472878595
        i64.popcnt
        f32.convert_i64_u
        i64.trunc_f32_u
        i64.le_u
        br_if 0
        (f64.const 8.097810326734278e-204)
        global.set $global_2435577119
    end

    i64.popcnt
    i64.popcnt
    i64.ctz
    f64.reinterpret_i64
)

)