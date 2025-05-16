(module
(type $sig_function_4183045727 (func (param i64) (result f32)))
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_205823209 i64 (i64.const -1911961377780104458))
(global $global_3620807707 (mut funcref) (ref.null func))
(func $function_4183045727 (export "function_4183045727") (param i64) (result f32)
    (local $temp i32)
    ;;FLAG_0
    global.get $global_205823209
    f32.convert_i64_u
    f32.floor
    f32.sqrt
    f32.nearest
)
(func $run (export "run")
    (local i64 i64)
    (local $temp i32)
    ;;FLAG_1
    local.get 0
    call $function_4183045727
    (i64.const 99923570)
    local.tee 1
    i64.ctz
    i32.wrap_i64
    f32.convert_i32_s
    f32.gt
    f64.convert_i32_s
    (f64.const 1.7319388421847583e-91)
    f64.copysign
    ref.func $function_4183045727
    global.set $global_3620807707
    (f64.const 2.949992873312488e+72)
    f64.le
    (br_table 0)
    ;;FLAG_2
)

)