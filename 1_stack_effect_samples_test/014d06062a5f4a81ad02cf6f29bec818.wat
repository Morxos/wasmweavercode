(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(table $tab_637915365 1 funcref)
(global $global_4156724118 (mut i64) (i64.const 5927194075620786435))
(func $run (export "run")
    (local $temp i32)
    global.get $global_4156724118
    global.get $global_4156724118
    i64.rem_s
    f32.convert_i64_s
    f32.trunc
    f32.sqrt
    f32.trunc
    f32.sqrt
    f32.trunc
    f32.trunc
    f32.floor
    f32.trunc
    ;;INSPECT
    f32.trunc
    f32.trunc
    f32.trunc
    i32.reinterpret_f32
    table.get $tab_637915365
    drop
)

)