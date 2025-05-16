(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_4281240483 (mut i32) (i32.const 1517678960))
(global $global_3729469926 (mut i64) (i64.const -7491539019466171381))
(func $run (export "run")
    (local f32 i32 f64)
    (local $temp i32)
    ;;INSPECT
    global.get $global_4281240483
    global.get $global_4281240483
    i32.add
    global.get $global_4281240483
    i32.shr_s
    local.get 0
    i64.trunc_f32_u
    i64.extend32_s
    f32.convert_i64_s
    i64.trunc_f32_u
    i64.extend16_s
    i32.wrap_i64
    i32.eqz
    local.tee 1
    i32.and
    f32.convert_i32_s
    f32.trunc
    f32.trunc
    f32.trunc
    f32.trunc
    i64.trunc_f32_u
    f32.convert_i64_s
    f32.trunc
    i64.trunc_f32_u
    f32.convert_i64_s
    i64.trunc_f32_u
    f64.convert_i64_s
    global.get $global_4281240483
    (i64.const 8898)
    global.set $global_3729469926
    i32.eqz
    f32.convert_i32_u
    f32.trunc
    f32.sqrt
    f32.trunc
    local.set 0
    local.set 2
)

)