(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3384175451 (mut i32) (i32.const 384334648))
(global $global_834451452 (mut f32) (f32.const 2.0063797473947156e+18))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    global.get $global_3384175451
    f32.convert_i32_u
    local.tee 0
    i32.trunc_f32_u
    i32.extend16_s
    i32.clz
    f32.convert_i32_s
    f32.sqrt
    i32.trunc_f32_u
    i32.clz
    global.set $global_3384175451
    local.get 0
    i32.trunc_f32_u
    nop
    i32.clz
    f32.reinterpret_i32
    i32.trunc_f32_u
    i32.eqz
    f32.convert_i32_u
    i32.reinterpret_f32
    i32.clz
    ;;INSPECT
    local.get 0
    f32.floor
    f32.floor
    global.set $global_834451452
    f32.reinterpret_i32
    global.set $global_834451452
    local.get 0
    global.set $global_834451452
)

)