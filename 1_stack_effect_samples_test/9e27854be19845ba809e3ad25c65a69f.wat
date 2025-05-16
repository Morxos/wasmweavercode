(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3620087866 (mut i64) (i64.const -8693302743394390992))
(func $run (export "run")
    (local i32 i32 i64)
    (local $temp i32)
    local.get 0
    i32.clz
    f32.convert_i32_u
    f32.sqrt
    f32.sqrt
    i64.trunc_f32_u
    f64.reinterpret_i64
    f64.nearest
    ;;INSPECT
    f64.trunc
    f32.demote_f64
    f32.ceil
    f32.abs
    global.get $global_3620087866
    i64.extend32_s
    i64.clz
    i64.eqz
    i32.ctz
    f64.convert_i32_s
    (i32.const 592854833)
    local.tee 1
    i32.clz
    f32.convert_i32_s
    f32.nearest
    i32.reinterpret_f32
    i32.extend16_s
    i64.extend_i32_s
    i64.popcnt
    f64.convert_i64_s
    f64.lt
    f32.reinterpret_i32
    f32.add
    i32.reinterpret_f32
    i64.extend_i32_s
    f64.convert_i64_s
    i64.trunc_f64_u
    i64.clz
    i64.popcnt
    i64.clz
    local.set 2
)

)