(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2854752212 (mut i64) (i64.const -4703656118493142037))
(func $run (export "run")
    (local i32 i64)
    (local $temp i32)
    local.get 0
    local.get 0
    i32.sub
    nop
    i64.extend_i32_s
    i64.clz
    nop
    f64.convert_i64_u
    f64.sqrt
    f64.floor
    f64.sqrt
    f32.demote_f64
    (i64.const 50071390)
    local.tee 1
    i32.wrap_i64
    nop
    (f32.const -2.1438380990660818e+33)
    drop
    i32.clz
    f32.convert_i32_s
    f32.max
    (f32.const 8.40769280330278e-06)
    i32.trunc_f32_u
    f32.convert_i32_s
    ;;INSPECT
    f32.mul
    f32.trunc
    i32.reinterpret_f32
    f64.convert_i32_u
    nop
    i64.trunc_f64_s
    global.set $global_2854752212
)

)