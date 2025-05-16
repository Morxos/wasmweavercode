(module
(type $sig_function_1822531607 (func (param i32)))
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_784649583 (mut i64) (i64.const -188286423783662532))
(func $function_1822531607 (export "function_1822531607") (param i32)
    (local $temp i32)
    (f64.const 7.134189461958367e+83)
    f64.nearest
    i64.reinterpret_f64
    global.set $global_784649583
    (i32.const -63)
    br_if 0
)
(func $run (export "run") (result i32)
    (local i32)
    (local $temp i32)
    (i32.const -11)
    i64.extend_i32_u
    block (param i64)
        i64.ctz
        f64.reinterpret_i64
        i32.trunc_f64_u
        local.get 0
        i32.gt_u
        call $function_1822531607
    end

    nop
    (i32.const 459092)
)

)