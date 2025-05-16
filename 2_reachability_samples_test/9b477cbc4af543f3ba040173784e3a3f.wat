(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2343808421 (mut i32) (i32.const -1917178826))
(global $global_1155937554 (mut f64) (f64.const 3.4510800696168755e+18))
(func $run (export "run")
    (local f64 i32)
    (local $temp i32)
    ;;FLAG_0
    block
        ;;FLAG_2
        (f64.const 2.6469559598824113e+54)
        local.get 0
        f64.ne
        (i64.const 9401)
        i64.extend16_s
        (i32.const -32)
        i32.extend16_s
        global.set $global_2343808421
        (f32.const -1.3813387892834712e-14)
        i32.trunc_f32_s
        global.get $global_2343808421
        (f64.const 3.605561216768144e-205)
        global.set $global_1155937554
        i32.and
        local.set 1
        f32.convert_i64_u
        (f32.const 0.0)
        f32.gt
        i32.rem_u
        (br_table 1 0)
        ;;FLAG_3
    end

    ;;FLAG_1
    (f32.const -9.670262858784463e+26)
    drop
    global.get $global_2343808421
    i32.ctz
    f32.convert_i32_u
    drop
)

)