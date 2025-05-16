(module
(type $sig_function_1514551219 (func (param i64 i32) (result f64)))
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1399206319 i64 (i64.const 625095492229169240))
(global $global_1745048468 (mut f32) (f32.const -1.7294527630934016e+18))
(func $function_1514551219 (export "function_1514551219") (param i64 i32) (result f64)
    (local $temp i32)
    ;;FLAG_0
    (f32.const -4.144396213324248e+34)
    global.get $global_1399206319
    i64.extend32_s
    global.get $global_1399206319
    i64.eq
    i32.clz
    i32.clz
    f64.convert_i32_s
    drop
    f32.nearest
    drop
    (f64.const 5.720052992353815e+297)
    br 0
)
(func $run (export "run")
    (local f64 i32 i32)
    (local $temp i32)
    ;;FLAG_1
    global.get $global_1399206319
    f64.convert_i64_s
    f64.nearest
    (f64.const 2.783576197840755e-66)
    local.get 0
    f64.le
    local.set 1
    i64.trunc_f64_s
    (f32.const 1.168135571526172e+34)
    f32.sqrt
    f32.trunc
    global.set $global_1745048468
    (f64.const 5.393950691624574e+27)
    (f32.const 3.1982726749731873e-36)
    i32.trunc_f32_s
    (i32.const -321)
    i32.ne
    local.tee 2
    nop
    nop
    f64.convert_i32_u
    f64.le
    call $function_1514551219
    local.set 0
)

)