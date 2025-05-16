(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_145375472 (mut i32) (i32.const -657804995))
(global $global_1159948555 (mut i64) (i64.const 7306042674483866891))
(global $global_3490536858 (mut f32) (f32.const 8.948508423561937e+18))
(func $run (export "run")
    (local i64 i64 i64 i64)
    (local $temp i32)
    local.get 0
    i64.ctz
    f32.convert_i64_s
    global.get $global_145375472
    f64.convert_i32_s
    f64.nearest
    f64.nearest
    f64.nearest
    f64.floor
    (i64.const -419525)
    i64.eqz
    f64.convert_i32_s
    local.get 0
    i64.extend32_s
    local.get 0
    i64.extend8_s
    ;;INSPECT
    i64.extend32_s
    local.tee 1
    i64.extend32_s
    i64.popcnt
    local.set 0
    i64.extend32_s
    i64.popcnt
    local.set 0
    f64.floor
    f64.floor
    f64.max
    i64.reinterpret_f64
    local.tee 2
    local.tee 3
    global.set $global_1159948555
    global.set $global_3490536858
)

)