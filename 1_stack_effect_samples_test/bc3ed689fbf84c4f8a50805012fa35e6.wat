(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3969556120 (mut f32) (f32.const -2.372284572734849e+18))
(global $global_814130925 (mut i32) (i32.const -1257205674))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    local.get 0
    i64.extend32_s
    i64.extend32_s
    f64.convert_i64_s
    i64.trunc_f64_s
    i64.eqz
    i32.eqz
    i32.popcnt
    i32.popcnt
    f32.convert_i32_u
    f32.trunc
    i32.reinterpret_f32
    i32.clz
    i32.clz
    f32.convert_i32_u
    ;;INSPECT
    i32.reinterpret_f32
    (f32.const -1.6430354690363957e+25)
    (i64.const 90)
    i64.clz
    i64.extend16_s
    local.set 0
    f32.neg
    global.set $global_3969556120
    global.set $global_814130925
)

)