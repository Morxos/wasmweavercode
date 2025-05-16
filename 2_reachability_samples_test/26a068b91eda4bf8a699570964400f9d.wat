(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1909028829 (mut f32) (f32.const 3.38205241218433e+18))
(func $run (export "run")
    (local i64 i32)
    (local $temp i32)
    ;;FLAG_0
    (i64.const -551)
    local.tee 0
    i64.eqz
    f32.convert_i32_u
    global.set $global_1909028829
    block
        ;;FLAG_2
        local.get 0
        local.get 0
        i64.rotr
        (i64.const 93065)
        i64.eqz
        local.set 1
        global.get $global_1909028829
        f32.neg
        global.set $global_1909028829
        local.set 0
    end

    ;;FLAG_1
    br 0
)

)