(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_392848535 (mut f64) (f64.const 2.4265252587563315e+18))
(func $run (export "run")
    (local i64 i32)
    (local $temp i32)
    local.get 0
    i64.extend32_s
    i64.ctz
    i64.ctz
    i32.wrap_i64
    i32.clz
    global.get $global_392848535
    f64.floor
    f64.sqrt
    f64.floor
    f64.floor
    f64.neg
    i64.trunc_f64_s
    i64.extend32_s
    i64.extend16_s
    i64.eqz
    i32.shl
    (i32.const -8931606)
    i32.div_u
    f32.reinterpret_i32
    f32.ceil
    f32.floor
    f32.sqrt
    ;;INSPECT
    f32.floor
    i32.trunc_f32_u
    local.tee 1
    local.set 1
)

)