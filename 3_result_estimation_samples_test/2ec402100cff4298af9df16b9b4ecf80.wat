(module
(type $sig_function_4068006475 (func (param f64) (result i64)))
(type $sig_function_1257203524 (func (param i64)))
(type $sig_function_65058106 (func (param f32) (result i32)))
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_3826173949 (mut f64) (f64.const 3.268239019095499e+18))
(global $global_129102202 (mut funcref) (ref.null func))
(global $global_1801527957 (mut i32) (i32.const -2109149755))
(func $function_4068006475 (export "function_4068006475") (param f64) (result i64)
    (local $temp i32)
    (i32.const 84606)
    f64.convert_i32_s
    f64.floor
    f32.demote_f64
    i64.trunc_f32_u
    drop
    (i32.const -762)
    f32.convert_i32_s
    f64.promote_f32
    f64.neg
    i64.trunc_f64_s
)
(func $function_1257203524 (export "function_1257203524") (param i64)
    (local $temp i32)
    (i32.const -99346141)
    f64.convert_i32_u
    local.get 0
    (f32.const 840177.9375)
    i32.reinterpret_f32
    f64.convert_i32_s
    nop
    global.set $global_3826173949
    drop
    f64.trunc
    f64.abs
    f64.sqrt
    (f64.const 1.667890570164002e-63)
    f64.le
    drop
)
(func $function_65058106 (export "function_65058106") (param f32) (result i32)
    (local funcref i32 f64)
    (local $temp i32)
    local.get 0
    i64.trunc_f32_s
    f32.convert_i64_s
    f64.promote_f32
    i32.trunc_f64_s
    i32.const 9
    loop $b_loop_1837733538 (param i32)
        nop
        (i32.const 9477)
        f64.convert_i32_u
        call $function_4068006475
        f32.convert_i64_u
        f64.promote_f32
        (i32.const 33998)
        i64.extend_i32_u
        i64.ctz
        i64.ctz
        ref.func $function_4068006475
        local.get 0
        drop
        (i64.const 2217842)
        f64.convert_i64_s
        drop
        global.set $global_129102202
        f64.convert_i64_s
        i64.reinterpret_f64
        f32.convert_i64_u
        drop
        f64.nearest
        i32.trunc_f64_s
        i32.ctz
        (f32.const -9.963438304680602e+30)
        ref.func $function_4068006475
        nop
        drop
        f64.promote_f32
        block (param i32 f64) (result f64)
            (f32.const -18520014323712.0)
            i64.trunc_f32_s
            f64.convert_i64_s
            f64.ne
            i32.shl
            return
            i32.clz
            nop
            f64.convert_i32_u
            ref.func $function_4068006475
            local.tee 1
            drop
        end

        i64.trunc_f64_s
        f32.convert_i64_s
        f64.promote_f32
        global.set $global_3826173949
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_1837733538
        drop
    end
    local.tee 2
    f32.convert_i32_s
    f32.ceil
    f64.promote_f32
    f64.nearest
    f64.nearest
    (f32.const 382778289946624.0)
    global.get $global_3826173949
    global.set $global_3826173949
    i64.trunc_f32_u
    i64.popcnt
    i64.extend8_s
    i64.clz
    f32.convert_i64_s
    global.get $global_3826173949
    f64.nearest
    local.tee 3
    call $function_4068006475
    i64.extend32_s
    i64.extend32_s
    f32.convert_i64_s
    i32.trunc_f32_u
    i64.extend_i32_u
    call $function_1257203524
    f32.ceil
    f64.promote_f32
    f64.ne
)
(func $run (export "run") (result f32)
    (local i64 i32)
    (local $temp i32)
    local.get 0
    i32.wrap_i64
    f32.convert_i32_s
    i32.trunc_f32_u
    drop
    (i64.const -494205)
    (f64.const 7.746827209416981e+63)
    nop
    global.set $global_3826173949
    f32.convert_i64_s
    f32.floor
    call $function_65058106
    local.set 1
    (i32.const -51791672)
    global.set $global_1801527957
    (i32.const 220965)
    f32.convert_i32_u
)

)