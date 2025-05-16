(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2120634314 (mut i64) (i64.const -1464721663755440322))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    global.get $global_2120634314
    global.get $global_2120634314
    i64.add
    (i64.const -1)
    i64.ge_u
    (br_table 0)
    ;;FLAG_1
    (i32.const 43414802)
    (br_table 0)
    ;;FLAG_2
    (i64.const 189856)
    global.get $global_2120634314
    i64.le_s
    (br_table 0)
    ;;FLAG_3
    global.get $global_2120634314
    i32.wrap_i64
    (br_table 0)
    ;;FLAG_4
    br 0
)

)