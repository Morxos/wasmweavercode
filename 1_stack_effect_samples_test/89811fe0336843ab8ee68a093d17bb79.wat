(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2647189512 (mut f64) (f64.const -2.338763245175812e+18))
(func $run (export "run")
    (local f64 f32 i64 f64)
    (local $temp i32)
    (f32.const -2472.858642578125)
    local.get 0
    f64.sqrt
    f64.floor
    global.set $global_2647189512
    i64.trunc_f32_s
    i64.extend16_s
    (f32.const 0.015379706397652626)
    f32.nearest
    f32.neg
    f32.neg
    f32.neg
    ;;INSPECT
    nop
    local.tee 1
    f32.nearest
    i32.trunc_f32_u
    i32.extend8_s
    i32.eqz
    i32.eqz
    i32.popcnt
    i64.extend_i32_u
    local.set 2
    i64.extend32_s
    i64.extend32_s
    f64.convert_i64_s
    f64.abs
    f64.neg
    local.tee 3
    nop
    f64.abs
    local.set 0
)

)