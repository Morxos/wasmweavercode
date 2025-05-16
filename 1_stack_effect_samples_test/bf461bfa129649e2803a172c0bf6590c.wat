(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1864131169 (mut f32) (f32.const -1.3847628771722527e+18))
(func $run (export "run")
    (local f64 i32 i32)
    (local $temp i32)
    local.get 0
    f64.trunc
    local.get 0
    f64.neg
    f64.sub
    f64.abs
    i64.trunc_f64_u
    (f32.const -3.447185870086855e-10)
    global.set $global_1864131169
    i64.extend32_s
    i64.eqz
    local.tee 1
    local.tee 2
    local.get 0
    f64.floor
    f32.demote_f64
    i64.trunc_f32_u
    f64.convert_i64_u
    global.get $global_1864131169
    f32.neg
    f32.abs
    f32.trunc
    f32.abs
    i32.reinterpret_f32
    f32.convert_i32_s
    f32.nearest
    (f32.const -5.144182090615931e+34)
    drop
    i32.reinterpret_f32
    f64.convert_i32_s
    f64.lt
    i32.shr_s
    ;;INSPECT
    drop
)

)