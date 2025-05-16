(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_4067882179 (mut f32) (f32.const -4.4115485138930893e+18))
(func $run (export "run") (result i64)
    (local f32)
    (local $temp i32)
    (i32.const 41953)
    (i64.const -4603)
    f32.convert_i64_u
    local.set 0
    f32.reinterpret_i32
    global.set $global_4067882179
    global.get $global_4067882179
    i64.trunc_f32_s
)

)