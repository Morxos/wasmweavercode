(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1054628111 (mut i64) (i64.const 8582156758504663085))
(func $run (export "run")
    (local i64 i64 f64 f32)
    (local $temp i32)
    local.get 0
    i64.extend32_s
    global.get $global_1054628111
    i64.rem_s
    local.tee 1
    f32.convert_i64_u
    f32.abs
    f32.abs
    f32.trunc
    f64.promote_f32
    f64.trunc
    local.set 2
    local.get 0
    f32.convert_i64_s
    f32.floor
    f32.sqrt
    f32.trunc
    f32.trunc
    f32.floor
    i64.trunc_f32_u
    i64.extend32_s
    i32.wrap_i64
    ;;INSPECT
    f32.reinterpret_i32
    local.tee 3
    f32.trunc
    local.set 3
)

)