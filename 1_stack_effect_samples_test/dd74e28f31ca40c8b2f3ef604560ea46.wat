(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1008281226 (mut i32) (i32.const -1155932876))
(func $run (export "run")
    (local i64 i64 i32)
    (local $temp i32)
    local.get 0
    local.tee 1
    f64.convert_i64_s
    f32.demote_f64
    i64.trunc_f32_u
    i64.extend32_s
    i64.ctz
    i64.popcnt
    f32.convert_i64_u
    i32.reinterpret_f32
    local.tee 2
    i32.clz
    local.get 0
    i64.eqz
    i32.div_s
    f64.convert_i32_s
    f64.nearest
    f64.nearest
    f64.nearest
    f64.sqrt
    i64.trunc_f64_u
    i64.eqz
    i32.clz
    f32.reinterpret_i32
    f32.nearest
    local.get 0
    i64.clz
    i64.eqz
    ;;INSPECT
    i32.clz
    i32.extend16_s
    i32.clz
    i32.clz
    i32.clz
    i32.clz
    i32.clz
    i32.clz
    global.set $global_1008281226
    i32.reinterpret_f32
    global.set $global_1008281226
)

)