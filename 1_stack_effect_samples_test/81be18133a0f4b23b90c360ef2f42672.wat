(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1979484629 (mut i64) (i64.const -1668528301779784795))
(global $global_2594069756 (mut f32) (f32.const 4.71832600193794e+18))
(global $global_1227692779 (mut i32) (i32.const -1976015356))
(func $run (export "run")
    (local f32 f32)
    (local $temp i32)
    global.get $global_1979484629
    i64.extend16_s
    f32.convert_i64_u
    f32.abs
    local.tee 0
    f32.floor
    local.tee 1
    f32.sqrt
    i64.trunc_f32_u
    i64.clz
    i64.clz
    local.get 0
    f32.trunc
    global.set $global_2594069756
    i64.eqz
    i32.clz
    i32.clz
    i32.clz
    local.get 0
    f32.trunc
    (i32.const -907)
    i64.extend_i32_s
    ;;INSPECT
    global.set $global_1979484629
    i32.reinterpret_f32
    i32.div_s
    global.set $global_1227692779
)

)