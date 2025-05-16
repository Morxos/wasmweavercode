(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2954328202 (mut f32) (f32.const -8.775203950547698e+18))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    (f32.const 4.2562390659934506e+20)
    global.set $global_2954328202
    global.get $global_2954328202
    f64.promote_f32
    f64.floor
    f64.sqrt
    ;;INSPECT
    f32.demote_f64
    f64.promote_f32
    f64.nearest
    f64.nearest
    f64.trunc
    f64.floor
    (f32.const -2132.1357421875)
    local.tee 0
    local.set 0
    f64.sqrt
    f64.floor
    drop
    nop
)

)