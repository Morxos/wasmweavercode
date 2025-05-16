(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_3371374204 (mut i32) (i32.const 985552575))
(func $run (export "run")
    (local f32)
    (local $temp i32)
    ;;FLAG_0
    (i32.const -863641)
    drop
    (f32.const -1.0959246411760958e+33)
    f32.floor
    f32.floor
    local.set 0
    (i64.const 4)
    i64.clz
    block
        ;;FLAG_2
        (f32.const -1.0441211462020874)
        local.set 0
        global.get $global_3371374204
        local.get 0
        f32.abs
        i32.trunc_f32_u
        i32.ne
        (br_table 0 1)
        ;;FLAG_3
    end

    ;;FLAG_1
    i64.extend32_s
    drop
    br 0
)

)