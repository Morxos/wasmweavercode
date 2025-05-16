(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_771341222 (mut f32) (f32.const 7.897028411489518e+18))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_3
        (f32.const -1.0959689689116203e-07)
        f32.abs
        global.get $global_771341222
        f32.mul
        i32.reinterpret_f32
        (br_table 0 1)
        ;;FLAG_4
    end

    ;;FLAG_1
    (i32.const 75)
    i32.clz
    i32.clz
    i64.extend_i32_s
    global.get $global_771341222
    i32.reinterpret_f32
    local.set 0
    i64.eqz
    (br_table 0)
    ;;FLAG_2
    br 0
)

)