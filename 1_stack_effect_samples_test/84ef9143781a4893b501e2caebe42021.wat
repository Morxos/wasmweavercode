(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_4028808183 (mut i32) (i32.const 2010716104))
(func $run (export "run")
    (local i32 i32 i32)
    (local $temp i32)
    local.get 0
    i32.clz
    f32.convert_i32_u
    local.get 0
    i32.extend16_s
    i32.ctz
    nop
    local.tee 1
    nop
    local.tee 2
    f32.reinterpret_i32
    f32.max
    (f32.const -6.269489927213101e-10)
    f32.trunc
    f32.nearest
    f32.gt
    f32.reinterpret_i32
    i32.trunc_f32_u
    f32.convert_i32_s
    i32.trunc_f32_u
    i32.clz
    i32.extend16_s
    f32.convert_i32_u
    f32.trunc
    i64.trunc_f32_u
    i64.popcnt
    i64.eqz
    i32.extend16_s
    f32.reinterpret_i32
    i32.trunc_f32_u
    i32.popcnt
    local.get 0
    i32.eq
    ;;INSPECT
    f64.convert_i32_u
    f32.demote_f64
    i32.reinterpret_f32
    global.set $global_4028808183
)

)