(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_113585933 (mut f64) (f64.const 5.690575713199204e+18))
(func $run (export "run")
    (local i32 f64 i64)
    (local $temp i32)
    global.get $global_113585933
    f64.sqrt
    local.get 0
    ;;INSPECT
    i32.clz
    i32.clz
    i32.clz
    f32.reinterpret_i32
    local.get 0
    i32.clz
    i64.extend_i32_u
    f64.convert_i64_s
    local.tee 1
    f64.floor
    local.get 0
    i32.clz
    i32.clz
    local.get 0
    i64.extend_i32_u
    i64.extend32_s
    i64.extend16_s
    drop
    i32.clz
    i32.clz
    i32.eqz
    i32.eqz
    i32.clz
    i32.eqz
    i64.extend_i32_s
    i64.extend32_s
    local.set 2
    f64.nearest
    local.set 1
    f32.nearest
    drop
    local.set 1
)

)