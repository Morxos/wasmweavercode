(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_2669366876 (mut i64) (i64.const 6577062623413224910))
(global $global_1297222746 (mut f64) (f64.const -7.097656837865828e+18))
(func $run (export "run") (result f32)
    (local i64 i32)
    (local $temp i32)
    local.get 0
    i64.ctz
    i64.extend8_s
    (i64.const 453)
    i64.rotr
    i64.eqz
    drop
    (i32.const 1713624729)
    i32.extend8_s
    i32.extend8_s
    i64.extend_i32_u
    global.set $global_2669366876
    (i64.const -837248)
    (i32.const 492275)
    i64.extend_i32_u
    i64.lt_u
    nop
    local.tee 1
    i64.extend_i32_u
    i64.popcnt
    global.set $global_2669366876
    (i64.const -73960)
    f64.convert_i64_u
    f64.floor
    f64.ceil
    f64.ceil
    f64.abs
    global.set $global_1297222746
    local.get 0
    i64.popcnt
    drop
    (i64.const -307)
    f32.convert_i64_s
)

)