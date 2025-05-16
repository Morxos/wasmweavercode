(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_302548932 f64 (f64.const 8.86698602178372e+18))
(global $global_674054097 (mut f64) (f64.const 3.2763441420635116e+18))
(func $run (export "run")
    (local f32 i32 f32)
    (local $temp i32)
    global.get $global_302548932
    f64.floor
    local.get 0
    local.get 0
    i64.trunc_f32_u
    (i32.const -18190336)
    i32.clz
    local.get 0
    drop
    f32.reinterpret_i32
    i32.reinterpret_f32
    local.set 1
    local.get 0
    i32.reinterpret_f32
    i64.extend_i32_u
    i64.extend16_s
    drop
    drop
    local.tee 2
    f32.floor
    f32.floor
    i64.trunc_f32_u
    i32.wrap_i64
    drop
    f64.floor
    ;;INSPECT
    f64.floor
    f64.floor
    f64.floor
    f64.sqrt
    f64.floor
    global.set $global_674054097
)

)