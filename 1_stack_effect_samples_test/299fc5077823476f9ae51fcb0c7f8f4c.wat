(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1121421437 (mut f32) (f32.const 6.45432127153347e+18))
(func $run (export "run")
    (local f32 f32 f32 i32)
    (local $temp i32)
    (f32.const -1.0760198342150279e-14)
    f32.neg
    local.tee 0
    global.set $global_1121421437
    nop
    global.get $global_1121421437
    f32.trunc
    i32.reinterpret_f32
    i32.ctz
    i32.clz
    local.get 0
    f32.sqrt
    f32.sqrt
    f32.abs
    i32.reinterpret_f32
    i32.rem_s
    i32.extend8_s
    ;;INSPECT
    i32.clz
    i32.extend8_s
    i32.extend8_s
    f32.convert_i32_s
    local.get 0
    nop
    f32.add
    local.get 0
    local.tee 1
    f32.max
    local.tee 2
    global.set $global_1121421437
    local.get 0
    f32.ceil
    f32.ceil
    i32.trunc_f32_u
    local.set 3
)

)