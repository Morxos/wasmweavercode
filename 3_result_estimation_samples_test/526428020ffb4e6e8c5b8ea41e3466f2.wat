(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_1835839623 (mut i32) (i32.const -1325840752))
(global $global_2909733276 (mut i64) (i64.const 8099156077024139737))
(func $run (export "run") (result f64)
    (local i32 f64)
    (local $temp i32)
    (i32.const 6037)
    (f64.const 4.348632494184236e-124)
    f64.floor
    i32.trunc_f64_u
    i32.shl
    local.set 0
    block
        (i32.const -4650)
        global.set $global_1835839623
        (i64.const 41190)
        f64.reinterpret_i64
        i64.reinterpret_f64
        global.set $global_2909733276
        local.get 0
        f32.convert_i32_u
        drop
        (i32.const -8085)
        br_if 0
    end

    block
        (i32.const -74269482)
        f64.convert_i32_u
        local.set 1
        (i64.const 616647)
        f32.convert_i64_s
        block (param f32)
            (i32.const -10)
            f32.convert_i32_u
            drop
            i32.trunc_f32_u
            drop
        end

    end

    nop
    (f32.const 1.4103169109239902e+36)
    nop
    drop
    global.get $global_1835839623
    drop
    local.get 0
    f64.convert_i32_u
)

)