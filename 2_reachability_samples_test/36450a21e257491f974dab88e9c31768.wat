(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1800321220 (mut i64) (i64.const -6123851713805308375))
(func $run (export "run")
    (local i64 i32)
    (local $temp i32)
    ;;FLAG_0
    global.get $global_1800321220
    local.get 0
    i64.gt_s
    f32.convert_i32_u
    (i32.const 30)
    global.get $global_1800321220
    drop
    local.set 1
    i32.reinterpret_f32
    f32.reinterpret_i32
    i32.reinterpret_f32
    (br_table 0)
    ;;FLAG_1
    global.get $global_1800321220
    drop
    (i32.const 9)
    drop
    br 0
)

)