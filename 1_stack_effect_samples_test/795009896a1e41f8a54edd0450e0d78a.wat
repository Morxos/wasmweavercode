(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1666220706 (mut i64) (i64.const 1195010573315129093))
(global $global_4056488640 (mut i32) (i32.const -1771175214))
(global $global_3590151081 (mut f64) (f64.const -1.3408472457407857e+18))
(func $run (export "run")
    (local f64 i32 i64)
    (local $temp i32)
    local.get 0
    f64.neg
    f32.demote_f64
    i32.trunc_f32_u
    f32.reinterpret_i32
    i32.reinterpret_f32
    i32.eqz
    i32.extend16_s
    local.tee 1
    i64.extend_i32_s
    ;;INSPECT
    i64.ctz
    i64.popcnt
    i64.extend32_s
    (f32.const 1.8528553474723232e-28)
    i64.trunc_f32_u
    i64.rotr
    f32.convert_i64_u
    i32.reinterpret_f32
    drop
    global.get $global_1666220706
    local.set 2
    (i32.const -5)
    i64.extend_i32_s
    i64.eqz
    global.set $global_4056488640
    local.get 0
    global.set $global_3590151081
)

)