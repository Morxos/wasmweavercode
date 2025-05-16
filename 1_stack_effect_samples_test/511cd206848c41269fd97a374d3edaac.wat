(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3310716761 i32 (i32.const 461277959))
(global $global_651619291 (mut f32) (f32.const -4.517239893746778e+18))
(func $run (export "run")
    (local i32 f32)
    (local $temp i32)
    global.get $global_3310716761
    f32.convert_i32_u
    i32.reinterpret_f32
    local.tee 0
    f32.convert_i32_u
    f32.nearest
    (i32.const -631)
    (f32.const 1.1593105467735278e+20)
    local.get 0
    ;;INSPECT
    f64.convert_i32_u
    f32.demote_f64
    f32.sub
    f64.promote_f32
    local.get 0
    local.set 0
    f64.ceil
    f64.ceil
    f32.demote_f64
    f64.promote_f32
    f32.demote_f64
    global.set $global_651619291
    f32.convert_i32_u
    f32.lt
    f32.convert_i32_u
    local.set 1
)

)