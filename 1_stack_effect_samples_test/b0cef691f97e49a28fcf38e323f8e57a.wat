(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3106351655 (mut i32) (i32.const 1916837896))
(func $run (export "run")
    (local i32 i32 i32)
    (local $temp i32)
    local.get 0
    i32.ctz
    i64.extend_i32_s
    i64.eqz
    local.get 0
    i32.extend16_s
    i32.gt_s
    i32.extend16_s
    local.tee 1
    f64.convert_i32_s
    f64.neg
    f64.nearest
    i32.trunc_f64_u
    i32.ctz
    i32.extend16_s
    i64.extend_i32_s
    i64.extend32_s
    f64.convert_i64_s
    i64.trunc_f64_s
    f32.convert_i64_s
    i32.reinterpret_f32
    local.tee 2
    global.set $global_3106351655
    local.get 0
    global.set $global_3106351655
    local.get 0
    i32.clz
    ;;INSPECT
    i32.clz
    i32.clz
    i32.clz
    i32.clz
    f32.convert_i32_u
    i32.reinterpret_f32
    i32.clz
    i32.clz
    drop
)

)