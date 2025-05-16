(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1382392970 (mut f32) (f32.const -1.6155958601360343e+18))
(func $run (export "run")
    (local f32 f64 i32)
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_2
        (f32.const -3.9344430491361493e-10)
        global.set $global_1382392970
        local.get 0
        f64.promote_f32
        f64.nearest
        local.set 1
        return
    end

    ;;FLAG_1
    local.get 0
    f32.nearest
    i32.reinterpret_f32
    local.set 2
    br 0
)

)