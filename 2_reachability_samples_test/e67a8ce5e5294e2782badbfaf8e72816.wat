(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2455867870 i32 (i32.const -297298949))
(global $global_4172260018 (mut f64) (f64.const -1.6273377874346066e+18))
(global $global_2961985274 (mut i64) (i64.const 4317913254724536446))
(func $run (export "run")
    (local i32 f64)
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_2
        (i32.const 8631)
        local.set 0
        (f32.const -0.006204031873494387)
        (f32.const 3.508172776448512e-35)
        (i32.const -3)
        f32.convert_i32_u
        nop
        f32.gt
        f64.convert_i32_u
        global.get $global_2455867870
        drop
        global.set $global_4172260018
        i32.reinterpret_f32
        f64.convert_i32_s
        local.set 1
    end

    ;;FLAG_1
    (i32.const 6916005)
    f64.convert_i32_s
    i64.trunc_f64_s
    i64.clz
    nop
    drop
    nop
    (f64.const 6.087796910289421e+221)
    i64.reinterpret_f64
    nop
    (f64.const 2.326374559969618e-159)
    local.set 1
    global.set $global_2961985274
)

)