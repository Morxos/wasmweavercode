(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_4006350039 (mut i64) (i64.const -5923825321642487481))
(func $run (export "run") (result f32)
    (local i32)
    (local $temp i32)
    nop
    (i64.const 9733)
    i64.popcnt
    f64.reinterpret_i64
    f64.floor
    (i64.const -734)
    i64.extend32_s
    global.set $global_4006350039
    nop
    i64.trunc_f64_s
    i64.extend8_s
    i32.wrap_i64
    local.set 0
    local.get 0
    i32.extend16_s
    local.set 0
    nop
    (f32.const 2040496783360.0)
)

)