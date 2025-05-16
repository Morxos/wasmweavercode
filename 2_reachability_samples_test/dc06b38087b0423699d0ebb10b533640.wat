(module
(type $sig_function_1316889756 (func))
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3390107096 (mut f64) (f64.const -8.0103942717602e+17))
(func $function_1316889756 (export "function_1316889756")
    (local i64 f64)
    (local $temp i32)
    ;;FLAG_0
    nop
    (f32.const -1.858305592739029e-10)
    drop
    (i32.const -683)
    f64.convert_i32_u
    nop
    (i32.const 9)
    nop
    i64.extend_i32_s
    i64.clz
    i64.clz
    local.set 0
    global.set $global_3390107096
    (f64.const 7.5573077320786115e+227)
    local.set 1
)
(func $run (export "run")
    (local f32 i64)
    (local $temp i32)
    ;;FLAG_1
    (i64.const -433188)
    f32.convert_i64_u
    local.set 0
    (f64.const 3.480120361302646e-240)
    f64.floor
    i64.trunc_f64_u
    i64.extend32_s
    local.tee 1
    i64.ctz
    i64.extend16_s
    call $function_1316889756
    (f32.const -1.592716097897906e-10)
    i32.reinterpret_f32
    f32.convert_i32_u
    i32.reinterpret_f32
    i64.extend_i32_u
    i64.eq
    (br_table 0)
    ;;FLAG_2
)

)