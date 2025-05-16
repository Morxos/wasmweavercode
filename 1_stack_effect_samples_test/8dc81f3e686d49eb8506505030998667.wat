(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2006913431 (mut i32) (i32.const -1855314676))
(global $global_1777972290 (mut i64) (i64.const -8672150480118472831))
(func $run (export "run")
    (local i32 i32)
    (local $temp i32)
    local.get 0
    f32.reinterpret_i32
    f32.ceil
    i32.reinterpret_f32
    f64.convert_i32_s
    i64.reinterpret_f64
    i32.wrap_i64
    i32.ctz
    f32.convert_i32_u
    f32.ceil
    ;;INSPECT
    i32.reinterpret_f32
    local.tee 1
    i32.extend16_s
    i32.clz
    i32.extend16_s
    i32.clz
    global.set $global_2006913431
    local.get 0
    i32.clz
    i32.clz
    i32.clz
    i32.clz
    f64.convert_i32_u
    f64.nearest
    (f32.const -8.331221085171517e+25)
    i32.reinterpret_f32
    drop
    f64.ceil
    f64.floor
    f64.nearest
    f64.nearest
    f32.demote_f64
    i32.reinterpret_f32
    i64.extend_i32_u
    global.set $global_1777972290
)

)