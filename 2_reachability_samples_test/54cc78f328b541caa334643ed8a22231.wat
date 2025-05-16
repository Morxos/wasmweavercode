(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2176804037 (mut i64) (i64.const 6077750688008954620))
(global $global_2006974260 (mut i32) (i32.const -1354039212))
(func $run (export "run")
    (local f32 f64)
    (local $temp i32)
    ;;FLAG_0
    (i32.const -8109643)
    i32.extend16_s
    i64.extend_i32_s
    global.set $global_2176804037
    local.get 0
    f32.sqrt
    (i64.const 98471)
    f64.convert_i64_u
    local.set 1
    (i32.const -2639292)
    i32.ctz
    global.set $global_2006974260
    i64.trunc_f32_u
    global.get $global_2176804037
    i64.eq
    br_if 0
    ;;FLAG_1
    br 0
)

)