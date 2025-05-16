(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3099681873 f32 (f32.const 7.261395791669887e+18))
(global $global_4247814827 (mut i32) (i32.const -1679901585))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    (f64.const 1.5634478939094114e-197)
    f32.demote_f64
    f32.ceil
    (f32.const -1.2108708526319206e+17)
    f32.neg
    f32.copysign
    f32.floor
    i32.reinterpret_f32
    f64.convert_i32_s
    f32.demote_f64
    f32.trunc
    i64.trunc_f32_u
    ;;INSPECT
    (f32.const 4.1820896696972527e-22)
    f32.trunc
    i64.trunc_f32_u
    global.get $global_3099681873
    nop
    local.set 0
    i64.gt_s
    f32.convert_i32_u
    f32.floor
    (f32.const 0.0)
    f32.ne
    global.set $global_4247814827
)

)