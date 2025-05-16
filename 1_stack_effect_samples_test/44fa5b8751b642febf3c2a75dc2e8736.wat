(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2343695064 (mut f32) (f32.const 6.772776535137976e+17))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    (f32.const 8.986457363707184e+21)
    local.tee 0
    (i64.const -718803)
    i64.popcnt
    nop
    i64.eqz
    i32.extend16_s
    i32.clz
    f32.convert_i32_u
    f32.lt
    i32.clz
    i32.clz
    f32.convert_i32_u
    ;;INSPECT
    i32.reinterpret_f32
    i32.popcnt
    local.get 0
    global.set $global_2343695064
    f32.convert_i32_u
    global.set $global_2343695064
)

)