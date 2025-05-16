(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_1327531044 (mut i64) (i64.const 1091575395819870221))
(global $global_2931767414 (mut f32) (f32.const -2.2543498560279675e+18))
(global $global_1874821318 (mut i32) (i32.const 565339586))
(func $run (export "run") (result i32)
    (local $temp i32)
    i32.const 9
    loop $b_loop_227325941 (param i32)
        (f64.const 1.4590288491481551e-297)
        i64.trunc_f64_s
        global.set $global_1327531044
        (f32.const 1.762062937502131e+31)
        f32.sqrt
        global.set $global_2931767414
        (f64.const 1.9885792535047894e+239)
        drop
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_227325941
        drop
    end
    nop
    block
        (i32.const -4336126)
        global.set $global_1874821318
        (i64.const -13867659)
        f32.convert_i64_s
        drop
    end

    nop
    (f64.const 5.2153438463391405e-270)
    f32.demote_f64
    i32.reinterpret_f32
)

)