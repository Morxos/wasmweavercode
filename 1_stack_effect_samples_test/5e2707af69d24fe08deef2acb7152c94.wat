(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1809384398 (mut i64) (i64.const 3144187679972973922))
(global $global_2852338000 (mut f32) (f32.const 8.496161643313496e+18))
(global $global_2104388745 (mut i32) (i32.const 1607416033))
(func $run (export "run")
    (local f64 f32 i64)
    (local $temp i32)
    global.get $global_1809384398
    (f64.const 1.554193365364847e-301)
    local.tee 0
    f32.demote_f64
    ;;INSPECT
    local.set 1
    nop
    local.set 2
    (i32.const -69471933)
    f32.convert_i32_u
    global.set $global_2852338000
    local.get 0
    f32.demote_f64
    i32.trunc_f32_s
    f32.reinterpret_i32
    f32.nearest
    f32.nearest
    f32.floor
    i32.trunc_f32_u
    i32.extend8_s
    global.set $global_2104388745
)

)