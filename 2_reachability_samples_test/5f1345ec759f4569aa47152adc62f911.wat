(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2552078488 (mut f32) (f32.const 3.9982940449365033e+18))
(global $global_1445218647 (mut i64) (i64.const 2205972770160015565))
(func $run (export "run")
    (local f32 i32)
    (local $temp i32)
    ;;FLAG_0
    (f32.const 0.0)
    i32.reinterpret_f32
    f32.convert_i32_s
    i32.trunc_f32_s
    f32.reinterpret_i32
    f32.trunc
    (i64.const 79985)
    nop
    (f32.const -1.8278818743056036e-06)
    local.tee 0
    global.set $global_2552078488
    global.set $global_1445218647
    i32.trunc_f32_s
    (br_table 0)
    ;;FLAG_1
    global.get $global_2552078488
    i32.reinterpret_f32
    i32.clz
    local.tee 1
    (br_table 0)
    ;;FLAG_2
    (f32.const 1.7729369196806783e-19)
    i32.trunc_f32_u
    i32.eqz
    (br_table 0)
    ;;FLAG_3
)

)