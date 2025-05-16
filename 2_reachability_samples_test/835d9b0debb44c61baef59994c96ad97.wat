(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_662616961 i32 (i32.const 1930893240))
(global $global_767845967 (mut i32) (i32.const -1301181101))
(func $run (export "run")
    (local i32)
    (local $temp i32)
    ;;FLAG_0
    (i32.const -41026386)
    block
        ;;FLAG_3
        global.get $global_662616961
        i32.popcnt
        local.tee 0
        global.set $global_767845967
        local.get 0
        (br_table 0 1)
        ;;FLAG_4
    end

    ;;FLAG_1
    i32.clz
    (f64.const 2.2173109769263174e-155)
    drop
    (br_table 0)
    ;;FLAG_2
    (i32.const 0)
    i64.extend_i32_u
    f64.reinterpret_i64
    f64.floor
    f64.abs
    f64.nearest
    i64.trunc_f64_u
    i64.clz
    i64.ctz
    drop
)

)