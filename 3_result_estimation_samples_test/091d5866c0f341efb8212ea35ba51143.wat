(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_3368479601 (mut i32) (i32.const 422895285))
(global $global_4227774639 (mut f64) (f64.const -7.851736744222202e+18))
(func $run (export "run") (result f32)
    (local f64 i64)
    (local $temp i32)
    nop
    (f32.const -3.1814575418288745e-26)
    f64.promote_f32
    i32.trunc_f64_s
    (i32.const 1197251)
    i32.shr_s
    block (param i32)
        nop
        global.set $global_3368479601
        (i64.const -588093)
        drop
        (i64.const 80)
        i64.extend16_s
        local.get 0
        i32.trunc_f64_s
        i32.clz
        local.get 0
        global.set $global_4227774639
        i32.clz
        (i64.const 9767)
        f64.convert_i64_u
        local.set 0
        f32.convert_i32_u
        i32.reinterpret_f32
        global.set $global_3368479601
        i64.extend16_s
        f32.convert_i64_u
        f32.trunc
        i64.trunc_f32_s
        f64.reinterpret_i64
        i32.trunc_f64_u
        nop
        global.get $global_3368479601
        i32.div_s
        i64.extend_i32_u
        local.tee 1
        f64.convert_i64_s
        drop
    end

    (i64.const -3705946024396198999)
    f64.convert_i64_s
    drop
    (f32.const -3.661071838581558e+22)
)

)