(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3877944011 i64 (i64.const 1533048186656146379))
(global $global_452495185 (mut f32) (f32.const -6.614624019549258e+18))
(global $global_2985088675 (mut i32) (i32.const -1335858506))
(func $run (export "run")
    (local f64 i64)
    (local $temp i32)
    local.get 0
    f64.trunc
    i64.reinterpret_f64
    f64.reinterpret_i64
    f64.neg
    f64.neg
    i64.trunc_f64_u
    i64.extend32_s
    drop
    global.get $global_3877944011
    local.set 1
    global.get $global_3877944011
    i64.extend8_s
    f64.convert_i64_s
    f64.nearest
    f64.nearest
    nop
    f64.nearest
    i64.trunc_f64_s
    f32.convert_i64_s
    f32.floor
    global.set $global_452495185
    nop
    ;;INSPECT
    local.get 0
    i64.trunc_f64_s
    i64.eqz
    global.set $global_2985088675
    (i32.const 501705509)
    global.set $global_2985088675
)

)