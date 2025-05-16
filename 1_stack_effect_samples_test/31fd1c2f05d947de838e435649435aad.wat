(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1085593726 (mut i32) (i32.const 427550543))
(global $global_916096623 (mut f64) (f64.const 5.796622782851566e+18))
(global $global_1516856127 (mut i64) (i64.const -3723993773849986178))
(func $run (export "run")
    (local i32 i32 f32 f64)
    (local $temp i32)
    local.get 0
    local.get 0
    f64.convert_i32_s
    (f32.const -0.20096059143543243)
    i32.trunc_f32_s
    local.tee 1
    f32.convert_i32_u
    i32.reinterpret_f32
    i32.eqz
    f32.convert_i32_s
    f32.trunc
    local.tee 2
    i32.reinterpret_f32
    global.set $global_1085593726
    local.tee 3
    global.get $global_1085593726
    global.set $global_1085593726
    i64.reinterpret_f64
    i64.extend32_s
    ;;INSPECT
    global.get $global_1085593726
    i32.extend16_s
    f32.convert_i32_u
    i32.trunc_f32_s
    f64.convert_i32_u
    f64.sqrt
    f64.floor
    f64.sqrt
    f64.nearest
    f64.nearest
    global.set $global_916096623
    global.set $global_1516856127
    f64.convert_i32_s
    global.set $global_916096623
)

)