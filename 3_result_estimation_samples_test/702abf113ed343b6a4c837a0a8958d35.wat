(module
(type $sig_function_98745024 (func (param f32) (result f64)))
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_2494153196 (mut i32) (i32.const 1593050587))
(func $function_98745024 (export "function_98745024") (param f32) (result f64)
    (local $temp i32)
    (f32.const 0.0)
    drop
    (f64.const 5.45498733752034e+249)
    (f32.const 7.802485524630127e-35)
    drop
)
(func $run (export "run") (result i64)
    (local $temp i32)
    i32.const 9
    loop $b_loop_1372283317 (param i32)
        (f32.const -1.0617336748830118e+21)
        f32.ceil
        call $function_98745024
        f64.trunc
        i64.reinterpret_f64
        i32.wrap_i64
        i32.ctz
        (i32.const -955826801)
        i32.shl
        f64.convert_i32_u
        f64.neg
        f64.ceil
        f32.demote_f64
        drop
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_1372283317
        drop
    end
    (i64.const 84935681)
    i32.wrap_i64
    global.set $global_2494153196
    (i32.const 506)
    i32.clz
    i64.extend_i32_u
)

)