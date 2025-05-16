(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2051774939 (mut i32) (i32.const 1916649683))
(func $run (export "run")
    (local i32 f32 i32)
    (local $temp i32)
    local.get 0
    i64.extend_i32_s
    ;;INSPECT
    i64.extend32_s
    i64.eqz
    local.get 0
    i32.shr_s
    f32.convert_i32_s
    local.tee 1
    i32.reinterpret_f32
    local.tee 2
    i32.extend16_s
    i32.clz
    i32.clz
    local.get 0
    i32.lt_u
    drop
    local.get 0
    i32.extend8_s
    i32.clz
    f32.convert_i32_u
    i32.reinterpret_f32
    i32.clz
    i32.clz
    nop
    i32.clz
    i32.extend16_s
    drop
    local.get 0
    i32.clz
    i32.clz
    f32.convert_i32_u
    i32.reinterpret_f32
    global.set $global_2051774939
)

)