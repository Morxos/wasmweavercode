(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_3557301566 (mut i32) (i32.const -1696025737))
(func $run (export "run") (result f32)
    (local i32 f32 f64 i64)
    (local $temp i32)
    (i32.const 372059)
    local.set 0
    (i32.const 852)
    global.set $global_3557301566
    (f64.const 3.4252423388658433e+131)
    f64.floor
    global.get $global_3557301566
    (f32.const 7.494561069833205e-13)
    local.set 1
    global.set $global_3557301566
    drop
    local.get 0
    global.set $global_3557301566
    block
        (i32.const 8131)
        i64.extend_i32_s
        i64.extend8_s
        i64.extend32_s
        i64.extend8_s
        global.get $global_3557301566
        i32.extend8_s
        f64.convert_i32_u
        local.set 2
        local.tee 3
        i64.extend32_s
        drop
    end

    (f32.const 8.610184669494629)
)

)