(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_4066818831 (mut i32) (i32.const 273651237))
(func $run (export "run")
    (local i32 f64)
    (local $temp i32)
    (f32.const 4.163401054034277e+19)
    f64.promote_f32
    local.get 0
    local.get 0
    i32.clz
    f32.convert_i32_s
    f64.promote_f32
    f64.sqrt
    local.get 0
    i32.extend8_s
    local.set 0
    f64.floor
    f64.floor
    f64.sqrt
    f64.floor
    f64.sqrt
    drop
    i64.extend_i32_u
    ;;INSPECT
    i64.extend16_s
    drop
    f64.sqrt
    f64.trunc
    local.set 1
    (f32.const 108353.328125)
    i32.trunc_f32_u
    global.set $global_4066818831
)

)