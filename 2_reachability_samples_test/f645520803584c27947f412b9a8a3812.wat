(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3591218972 (mut i64) (i64.const -906862607686893055))
(func $run (export "run")
    (local f32 i32 i32)
    (local $temp i32)
    ;;FLAG_0
    (i64.const 1852)
    global.set $global_3591218972
    global.get $global_3591218972
    f32.convert_i64_s
    local.tee 0
    block (param f32)
        ;;FLAG_2
        i32.trunc_f32_u
        i32.clz
        local.tee 1
        local.tee 2
        drop
    end

    ;;FLAG_1
    br 0
)

)