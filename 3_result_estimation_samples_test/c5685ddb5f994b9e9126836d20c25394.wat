(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_2454243448 (mut f64) (f64.const -3.47538857910435e+18))
(global $global_1740015145 (mut f32) (f32.const 7.379350849341882e+18))
(func $run (export "run") (result f64)
    (local f32)
    (local $temp i32)
    block
        (f32.const -0.010418473742902279)
        f32.abs
        local.tee 0
        i32.reinterpret_f32
        global.get $global_2454243448
        global.set $global_2454243448
        br_if 0
        (f32.const -10401338097664.0)
        nop
        global.set $global_1740015145
    end

    local.get 0
    f64.promote_f32
    f32.demote_f64
    drop
    nop
    global.get $global_2454243448
)

)