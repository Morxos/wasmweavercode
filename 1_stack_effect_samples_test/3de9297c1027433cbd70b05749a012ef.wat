(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3183691477 (mut f64) (f64.const 4.67787801764012e+18))
(global $global_1905567863 (mut f32) (f32.const 2.2808464369899274e+18))
(global $global_564649267 (mut i32) (i32.const 27372521))
(func $run (export "run")
    (local i64 f64)
    (local $temp i32)
    nop
    global.get $global_3183691477
    f64.floor
    local.get 0
    i64.extend32_s
    ;;INSPECT
    i64.extend32_s
    i64.clz
    i32.wrap_i64
    drop
    local.tee 1
    (i64.const -3)
    i64.extend8_s
    f64.convert_i64_s
    f64.nearest
    f64.floor
    f64.div
    f32.demote_f64
    i32.reinterpret_f32
    f32.convert_i32_u
    i32.reinterpret_f32
    f32.convert_i32_u
    global.set $global_1905567863
    local.get 0
    i64.extend16_s
    i64.extend16_s
    i64.eqz
    f32.convert_i32_u
    f32.floor
    f32.floor
    i32.reinterpret_f32
    i32.clz
    global.set $global_564649267
)

)