(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_204792302 (mut f64) (f64.const 5.719477736450726e+18))
(global $global_4264095086 (mut f32) (f32.const -1.5254728777368863e+18))
(global $global_1437704286 (mut i32) (i32.const -1028018850))
(func $run (export "run")
    (local i32 i32 f64)
    (local $temp i32)
    global.get $global_204792302
    f64.floor
    f64.floor
    local.get 0
    i32.clz
    i32.clz
    i32.popcnt
    local.tee 1
    i32.clz
    f64.convert_i32_s
    f64.floor
    f64.sub
    local.tee 2
    f64.nearest
    f64.floor
    f64.nearest
    f64.nearest
    f64.neg
    ;;INSPECT
    f32.demote_f64
    global.set $global_4264095086
    (i32.const 430091)
    global.set $global_1437704286
    local.get 0
    global.set $global_1437704286
)

)