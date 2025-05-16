(module
(type $sig_run (func (result i32)))
(import "env" "memory" (memory 1))
(global $global_1848106893 (mut f32) (f32.const -3.1533427236127375e+18))
(global $global_4215329519 (mut i64) (i64.const 7614787081695958869))
(func $run (export "run") (result i32)
    (local f32)
    (local $temp i32)
    nop
    (i64.const 326809)
    drop
    global.get $global_1848106893
    local.set 0
    block
        (i64.const -287)
        f32.convert_i64_s
        drop
        nop
        local.get 0
        local.set 0
        (i64.const 3444)
        drop
        br 0
    end

    local.get 0
    drop
    (i64.const -9485478)
    global.set $global_4215329519
    (f64.const 3.9162781255209646e+292)
    drop
    (i32.const 84294983)
)

)