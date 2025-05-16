(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_1395518992 i64 (i64.const 7607304908957224857))
(global $global_2480382169 (mut i64) (i64.const 7658519406481056616))
(func $run (export "run")
    (local $temp i32)
    ;;FLAG_0
    global.get $global_1395518992
    i64.clz
    i64.ctz
    drop
    (f32.const 1.8474622170065697e-30)
    i64.trunc_f32_u
    i64.extend16_s
    i64.ctz
    global.set $global_2480382169
    global.get $global_1395518992
    global.set $global_2480382169
    br 0
)

)