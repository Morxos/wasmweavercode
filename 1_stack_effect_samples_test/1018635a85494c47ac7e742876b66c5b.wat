(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2109213619 (mut i32) (i32.const -2116353535))
(func $run (export "run")
    (local i32 i32 f64 f64 f64)
    (local $temp i32)
    local.get 0
    i32.clz
    i32.clz
    (i32.const -1820985390)
    local.tee 1
    f64.convert_i32_s
    local.tee 2
    nop
    f64.abs
    f64.trunc
    f64.sqrt
    f64.trunc
    f64.trunc
    local.tee 3
    f64.trunc
    local.tee 4
    f64.trunc
    ;;INSPECT
    i64.reinterpret_f64
    local.get 0
    i32.extend16_s
    global.set $global_2109213619
    i64.ctz
    f32.convert_i64_u
    f32.abs
    i64.trunc_f32_u
    f32.convert_i64_u
    i64.trunc_f32_u
    nop
    i32.wrap_i64
    i32.mul
    f64.convert_i32_s
    local.set 2
)

)