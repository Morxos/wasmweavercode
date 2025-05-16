(module
(type $sig_function_3011949758 (func))
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_982803538 f64 (f64.const -1.195405786064937e+18))
(global $global_1749770017 (mut f64) (f64.const 7.873119923704789e+18))
(func $function_3011949758 (export "function_3011949758")
    (local f64)
    (local $temp i32)
    (f64.const 1.225755597017633e-164)
    local.set 0
    (f64.const 1.8454282859927594e-266)
    f64.sqrt
    drop
)
(func $run (export "run") (result f32)
    (local i32 f64 i32)
    (local $temp i32)
    (f64.const 8.855922858351603e+170)
    drop
    (i32.const 5828885)
    block (param i32)
        nop
        i32.extend16_s
        (i32.const 93750186)
        (f32.const -3.4632954335885804e-27)
        drop
        i32.rotl
        i32.clz
        local.set 0
        (i32.const -76394)
        local.set 0
        (f64.const 1.2769042157679052e-272)
        f64.abs
        f64.nearest
        local.set 1
    end

    global.get $global_982803538
    nop
    local.set 1
    nop
    (i32.const -946691470)
    local.tee 2
    f64.convert_i32_u
    f64.floor
    global.set $global_1749770017
    (i64.const 6014873)
    i32.wrap_i64
    call $function_3011949758
    i32.eqz
    local.get 0
    i32.shl
    i32.clz
    f32.reinterpret_i32
    (i64.const 14086)
    drop
)

)