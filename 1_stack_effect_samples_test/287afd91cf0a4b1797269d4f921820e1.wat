(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1030683528 (mut f32) (f32.const -8.337842689152123e+17))
(func $run (export "run")
    (local f32 i32)
    (local $temp i32)
    (f32.const -0.8332964777946472)
    f32.nearest
    f32.ceil
    local.tee 0
    local.get 0
    i32.reinterpret_f32
    i32.eqz
    i32.ctz
    f32.convert_i32_u
    ;;INSPECT
    f64.promote_f32
    f64.abs
    f32.demote_f64
    f32.abs
    i64.trunc_f32_s
    i64.extend8_s
    i32.wrap_i64
    global.get $global_1030683528
    f32.neg
    f32.sqrt
    i32.trunc_f32_u
    i32.or
    local.tee 1
    f32.convert_i32_u
    f32.add
    global.set $global_1030683528
)

)