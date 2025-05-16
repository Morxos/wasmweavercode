(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_820896903 (mut i32) (i32.const 2034867072))
(global $global_2908090307 (mut i64) (i64.const 8760191613137866749))
(func $run (export "run") (result f64)
    (local i32 i64)
    (local $temp i32)
    global.get $global_820896903
    local.get 0
    i32.le_s
    f64.convert_i32_u
    i64.trunc_f64_s
    i64.popcnt
    i64.extend32_s
    local.tee 1
    i64.extend16_s
    i64.ctz
    local.set 1
    (f64.const 7.321660874024547e-249)
    f64.abs
    local.get 0
    f32.convert_i32_u
    i32.reinterpret_f32
    (br_table 0)
    (f64.const 2.298737289509149e+137)
    f64.min
    i64.trunc_f64_u
    i64.popcnt
    i64.ctz
    block (param i64)
        i64.eqz
        i64.extend_i32_s
        f64.convert_i64_u
        i32.trunc_f64_s
        local.set 0
        block
            (i32.const 23)
            drop
            nop
            global.get $global_820896903
            i32.clz
            global.get $global_820896903
            i32.shl
            (i32.const -95067093)
            i32.shl
            i32.clz
            i32.clz
            (i64.const -8397100)
            global.set $global_2908090307
            i64.extend_i32_u
            global.set $global_2908090307
        end

        br 0
    end

    (f64.const 1.3560058355147303e+226)
)

)