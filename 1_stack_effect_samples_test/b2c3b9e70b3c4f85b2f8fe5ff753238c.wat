(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_734753928 (mut f32) (f32.const -2.1548336083537756e+18))
(global $global_4093773939 (mut i32) (i32.const -171072526))
(func $run (export "run")
    (local f64)
    (local $temp i32)
    (f32.const -3.482549745629182e+26)
    f32.neg
    f64.promote_f32
    local.set 0
    (i32.const 186187)
    f32.convert_i32_s
    global.set $global_734753928
    (i32.const 4)
    local.get 0
    drop
    f32.reinterpret_i32
    ;;INSPECT
    f32.floor
    i32.reinterpret_f32
    i32.clz
    f32.convert_i32_s
    global.set $global_734753928
    (i32.const -36)
    f32.reinterpret_i32
    f32.neg
    i32.reinterpret_f32
    global.set $global_4093773939
)

)