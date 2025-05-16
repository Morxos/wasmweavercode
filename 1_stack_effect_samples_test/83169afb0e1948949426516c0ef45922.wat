(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1040573697 (mut i32) (i32.const 1023106073))
(func $run (export "run")
    (local i64 i32)
    (local $temp i32)
    ;;INSPECT
    local.get 0
    f32.convert_i64_u
    f32.ceil
    local.get 0
    i64.clz
    f32.convert_i64_s
    f32.ceil
    f32.trunc
    i32.reinterpret_f32
    local.tee 1
    f32.reinterpret_i32
    f32.copysign
    f32.sqrt
    (i32.const 652079)
    i32.clz
    i32.extend8_s
    i32.clz
    f32.reinterpret_i32
    f32.add
    i32.reinterpret_f32
    f32.reinterpret_i32
    f32.sqrt
    f32.neg
    i32.reinterpret_f32
    f32.reinterpret_i32
    i32.reinterpret_f32
    i32.clz
    i32.clz
    global.set $global_1040573697
)

)