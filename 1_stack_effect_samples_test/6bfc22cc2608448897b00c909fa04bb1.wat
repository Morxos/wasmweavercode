(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_409836250 (mut i32) (i32.const -967889166))
(func $run (export "run")
    (local i32 i64)
    (local $temp i32)
    local.get 0
    (i32.const 465)
    i32.sub
    i32.eqz
    f32.convert_i32_s
    i32.reinterpret_f32
    i64.extend_i32_s
    i64.extend32_s
    i64.popcnt
    i64.clz
    local.tee 1
    i64.ctz
    f64.convert_i64_s
    i32.trunc_f64_u
    global.set $global_409836250
    local.get 0
    f32.reinterpret_i32
    f32.sqrt
    f32.sqrt
    i32.trunc_f32_s
    i32.extend16_s
    ;;INSPECT
    f32.convert_i32_s
    local.get 0
    (f32.const -2.901271879915368e-22)
    i32.reinterpret_f32
    i32.eqz
    i32.extend16_s
    i32.shr_s
    f32.convert_i32_s
    i64.trunc_f32_u
    f64.reinterpret_i64
    f32.demote_f64
    f32.le
    i32.eqz
    f32.convert_i32_s
    drop
)

)