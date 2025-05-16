(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_772697604 (mut i64) (i64.const -7105445611168465799))
(func $run (export "run")
    (local i32 f32)
    (local $temp i32)
    local.get 0
    i32.extend8_s
    i32.clz
    i64.extend_i32_s
    i64.eqz
    (f32.const -1.0341332558138699e-30)
    i32.reinterpret_f32
    f32.convert_i32_s
    f32.ceil
    ;;INSPECT
    f32.nearest
    i32.reinterpret_f32
    i32.and
    i32.extend16_s
    (f32.const -0.23943325877189636)
    f32.ceil
    local.tee 1
    i64.trunc_f32_u
    global.set $global_772697604
    drop
    nop
    (f32.const -2.9313553501773208e+20)
    f32.nearest
    f32.neg
    f64.promote_f32
    drop
)

)