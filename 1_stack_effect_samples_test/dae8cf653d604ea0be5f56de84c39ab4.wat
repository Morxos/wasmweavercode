(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_889550734 (mut f64) (f64.const 1.0136803108439204e+18))
(global $global_476910344 (mut f32) (f32.const 1.7458673721844695e+18))
(func $run (export "run")
    (local i32 f32)
    (local $temp i32)
    global.get $global_889550734
    local.get 0
    i32.extend8_s
    i32.extend8_s
    f64.convert_i32_s
    f64.sub
    local.get 0
    i32.extend8_s
    i64.extend_i32_s
    (f32.const -1.2988319213036448e-05)
    local.set 1
    local.get 0
    f32.convert_i32_s
    f32.sqrt
    i32.reinterpret_f32
    i32.clz
    f32.convert_i32_u
    global.set $global_476910344
    i64.clz
    drop
    f64.nearest
    f64.floor
    ;;INSPECT
    (f64.const 1.905292530644737e-25)
    f64.sqrt
    f64.sub
    drop
)

)