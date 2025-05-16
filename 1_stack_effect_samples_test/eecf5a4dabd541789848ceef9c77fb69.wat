(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2757955749 (mut i32) (i32.const -1767671148))
(global $global_989946317 (mut f32) (f32.const 8.978720804069966e+18))
(func $run (export "run")
    (local f64 f64 i64 f32)
    (local $temp i32)
    local.get 0
    f64.nearest
    local.tee 1
    i32.trunc_f64_u
    i32.clz
    f32.convert_i32_u
    nop
    i32.reinterpret_f32
    global.set $global_2757955749
    local.get 0
    global.get $global_2757955749
    ;;INSPECT
    i64.extend_i32_s
    local.tee 2
    f64.reinterpret_i64
    f64.lt
    i32.clz
    f32.reinterpret_i32
    i32.trunc_f32_u
    f32.convert_i32_s
    local.tee 3
    f32.floor
    global.set $global_989946317
    (f32.const -43.958431243896484)
    i32.reinterpret_f32
    drop
)

)