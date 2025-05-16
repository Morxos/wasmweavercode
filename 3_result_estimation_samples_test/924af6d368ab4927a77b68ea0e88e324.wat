(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_2714011395 (mut f64) (f64.const 6.494803929454287e+18))
(func $run (export "run") (result f32)
    (local i64 f64)
    (local $temp i32)
    (i64.const -6743891156951561135)
    local.set 0
    local.get 0
    global.get $global_2714011395
    drop
    i64.extend16_s
    global.get $global_2714011395
    f64.floor
    local.set 1
    i64.extend32_s
    f32.convert_i64_s
)

)