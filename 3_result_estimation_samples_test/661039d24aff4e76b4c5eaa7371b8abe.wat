(module
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_397944578 (mut i32) (i32.const -847351893))
(global $global_1296054191 (mut i64) (i64.const -5329239213826610732))
(global $global_3054814311 (mut f64) (f64.const -5.769520742876785e+18))
(func $run (export "run") (result f32)
    (local i64 f64 f32 i32)
    (local $temp i32)
    (i64.const -465577928)
    global.get $global_397944578
    nop
    f32.convert_i32_s
    drop
    local.tee 0
    i32.wrap_i64
    i64.extend_i32_s
    global.set $global_1296054191
    (i64.const 659)
    i64.eqz
    drop
    nop
    (i64.const 88025531)
    local.set 0
    local.get 0
    (i64.const 34296)
    i64.mul
    f64.convert_i64_u
    f64.ceil
    f64.floor
    f64.floor
    local.tee 1
    global.set $global_3054814311
    block
        (i32.const -397095269)
        f32.reinterpret_i32
        local.tee 2
        local.set 2
        (i32.const 549950729)
        f64.convert_i32_s
        i32.trunc_f64_s
        global.set $global_397944578
    end

    block
        (i64.const 3)
        f32.convert_i64_s
        (f32.const -1.4592940041286978e-17)
        f32.eq
        drop
    end

    (i32.const 35526369)
    local.tee 3
    nop
    f32.convert_i32_s
)

)