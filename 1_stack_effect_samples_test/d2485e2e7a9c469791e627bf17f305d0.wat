(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_883783159 (mut i32) (i32.const -138184045))
(global $global_4206449350 (mut i64) (i64.const 7974321034628176271))
(func $run (export "run")
    (local i64 i64)
    (local $temp i32)
    local.get 0
    i64.extend32_s
    i64.ctz
    i32.wrap_i64
    global.get $global_883783159
    i32.extend8_s
    i32.shr_s
    i32.ctz
    global.get $global_883783159
    f32.convert_i32_s
    i64.trunc_f32_s
    i64.ctz
    i64.ctz
    drop
    i32.ctz
    f64.convert_i32_s
    f64.trunc
    i32.trunc_f64_u
    i64.extend_i32_s
    f64.convert_i64_s
    i64.trunc_f64_u
    i64.eqz
    f64.convert_i32_s
    i64.reinterpret_f64
    f64.convert_i64_s
    f64.floor
    i64.trunc_f64_u
    local.tee 1
    ;;INSPECT
    i64.extend8_s
    i64.extend32_s
    f32.convert_i64_u
    f32.neg
    i64.trunc_f32_u
    i64.eqz
    f64.convert_i32_u
    i64.reinterpret_f64
    nop
    global.set $global_4206449350
)

)