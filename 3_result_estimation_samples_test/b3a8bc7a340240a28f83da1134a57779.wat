(module
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_3748043778 f64 (f64.const 4.141338874947891e+17))
(global $global_3705071383 (mut f64) (f64.const -8.04233214809385e+17))
(global $global_4053678145 (mut i64) (i64.const 3783312189075667855))
(func $run (export "run") (result i64)
    (local i64)
    (local $temp i32)
    nop
    local.get 0
    local.get 0
    i64.gt_u
    i32.clz
    block
        (i32.const 3900680)
        i64.extend_i32_u
        global.get $global_3748043778
        f64.ceil
        global.set $global_3705071383
        global.set $global_4053678145
    end

    i32.clz
    i64.extend_i32_u
    f32.convert_i64_u
    f64.promote_f32
    f64.nearest
    f64.sqrt
    (i64.const 2670)
    i64.ctz
    f32.convert_i64_u
    f32.sqrt
    drop
    i64.reinterpret_f64
    i64.extend32_s
)

)