(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2222847921 (mut i32) (i32.const 1185597704))
(func $run (export "run")
    (local f64 i32)
    (local $temp i32)
    local.get 0
    local.get 0
    f64.le
    f32.convert_i32_s
    f32.abs
    f32.nearest
    f32.ceil
    f32.ceil
    i32.reinterpret_f32
    (i64.const 7566136974466113008)
    f32.convert_i64_s
    ;;INSPECT
    f64.promote_f32
    drop
    (i32.const -987534366)
    i32.shr_s
    local.tee 1
    i32.clz
    i32.clz
    local.get 0
    f64.neg
    i64.reinterpret_f64
    drop
    f32.reinterpret_i32
    i32.reinterpret_f32
    i32.clz
    i32.clz
    i32.clz
    i32.clz
    global.set $global_2222847921
)

)