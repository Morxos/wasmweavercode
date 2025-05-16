(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1256143036 (mut f32) (f32.const 5.343928876688998e+18))
(func $run (export "run")
    (local i32 f64 f64 f64)
    (local $temp i32)
    (f32.const -0.006295124068856239)
    i32.reinterpret_f32
    local.tee 0
    local.set 0
    local.get 0
    f64.convert_i32_s
    f64.trunc
    f64.trunc
    f64.trunc
    local.tee 1
    f64.trunc
    f64.trunc
    f64.trunc
    local.tee 2
    f64.trunc
    f64.trunc
    ;;INSPECT
    f64.trunc
    f64.trunc
    f64.trunc
    f64.abs
    local.tee 3
    local.set 1
    global.get $global_1256143036
    global.set $global_1256143036
)

)