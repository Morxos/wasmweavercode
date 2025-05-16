(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_270625129 (mut f32) (f32.const -2.471637542932316e+18))
(global $global_2571339717 (mut i32) (i32.const -70496773))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    (f32.const -6.862581208920883e+17)
    f32.neg
    global.set $global_270625129
    global.get $global_270625129
    local.tee 0
    i32.reinterpret_f32
    f32.convert_i32_u
    i32.reinterpret_f32
    f32.convert_i32_u
    global.get $global_270625129
    f32.lt
    i32.extend16_s
    ;;INSPECT
    (i32.const -76038152)
    i32.div_s
    f32.convert_i32_u
    i32.trunc_f32_u
    f32.convert_i32_u
    i32.reinterpret_f32
    local.get 0
    i32.reinterpret_f32
    i32.div_s
    f32.convert_i32_s
    f32.floor
    i32.trunc_f32_u
    global.set $global_2571339717
    (i32.const -26694385)
    i32.eqz
    global.set $global_2571339717
)

)