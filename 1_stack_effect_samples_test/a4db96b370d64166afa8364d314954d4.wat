(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1851264171 (mut f64) (f64.const 7.138910531016983e+18))
(func $run (export "run")
    (local i32 i64 i64 f64 f32)
    (local $temp i32)
    local.get 0
    f32.convert_i32_s
    f32.abs
    ;;INSPECT
    i32.trunc_f32_s
    i32.eqz
    local.get 0
    i32.shr_s
    i64.extend_i32_s
    i64.popcnt
    i64.eqz
    f32.convert_i32_s
    global.get $global_1851264171
    f64.floor
    local.get 0
    local.get 0
    i32.eqz
    drop
    i32.clz
    i32.clz
    i32.eqz
    i32.eqz
    i32.eqz
    i32.clz
    i32.popcnt
    (i64.const -66950624)
    local.tee 1
    local.tee 2
    local.set 1
    local.set 0
    f64.sqrt
    local.set 3
    local.set 4
)

)