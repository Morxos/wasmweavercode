(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_3698078003 (mut i32) (i32.const -1716048073))
(global $global_433108263 (mut i64) (i64.const -5988904215824783592))
(func $run (export "run") (result f32)
    (local f64)
    (local $temp i32)
    (i32.const -297368172)
    global.set $global_3698078003
    (i64.const 825653)
    global.set $global_433108263
    global.get $global_3698078003
    i32.clz
    i32.extend8_s
    drop
    (i64.const 69)
    i32.wrap_i64
    drop
    (i32.const 2641764)
    (i32.const 615354438)
    i32.rotl
    global.set $global_3698078003
    (i32.const -2)
    global.set $global_3698078003
    global.get $global_3698078003
    (i64.const 0)
    i64.extend32_s
    drop
    f64.convert_i32_s
    local.set 0
    (i64.const -325645)
    f32.convert_i64_s
    (i32.const -187327)
    i32.eqz
    i32.popcnt
    i32.extend8_s
    (br_table 0)
)

)