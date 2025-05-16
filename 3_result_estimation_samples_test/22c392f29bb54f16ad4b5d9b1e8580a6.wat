(module
(type $sig_function_2358763765 (func))
(type $sig_run (func (result f32)))
(import "env" "memory" (memory 1))
(global $global_1776124928 (mut f64) (f64.const -1.4941018494881219e+18))
(global $global_1151973835 (mut f32) (f32.const -5.383876333149356e+18))
(global $global_1976486260 (mut i32) (i32.const 1555164795))
(func $function_2358763765 (export "function_2358763765")
    (local f32 i32 f64)
    (local $temp i32)
    global.get $global_1776124928
    local.get 0
    (f32.const -9.337472834849693e-17)
    global.set $global_1151973835
    f32.abs
    drop
    i64.reinterpret_f64
    i32.const 9
    loop $b_loop_832794961 (param i32)
        i32.const 9
        loop $b_loop_2973235596 (param i32)
            local.get 0
            f64.promote_f32
            i32.trunc_f64_s
            i32.ctz
            global.set $global_1976486260
            local.get 0
            f32.ceil
            i64.trunc_f32_u
            i32.wrap_i64
            local.set 1
            return
            i32.const 1
            i32.sub
            local.tee $temp
            local.get $temp
            i32.const 0
            i32.gt_s
            br_if $b_loop_2973235596
            drop
        end
        global.get $global_1776124928
        local.set 2
        (f64.const 8.624081615033862e+285)
        drop
        (f32.const 205076736.0)
        global.set $global_1151973835
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_832794961
        drop
    end
    i64.extend32_s
    i64.clz
    i64.extend32_s
    f32.convert_i64_s
    i32.reinterpret_f32
    i32.clz
    f64.convert_i32_u
    i32.const 9
    loop $b_loop_537559201 (param i32)
        (f32.const 3.416023604673956e-36)
        f64.promote_f32
        global.set $global_1776124928
        local.get 0
        f32.floor
        drop
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_537559201
        drop
    end
    i32.trunc_f64_s
    i32.clz
    br_if 0
)
(func $run (export "run") (result f32)
    (local f64)
    (local $temp i32)
    block
        nop
        global.get $global_1776124928
        local.set 0
        global.get $global_1776124928
        global.set $global_1776124928
        global.get $global_1776124928
        local.set 0
    end

    (f64.const 2.4629054769293132e+117)
    nop
    call $function_2358763765
    nop
    nop
    f64.floor
    f64.sqrt
    f64.trunc
    (f32.const 2.349219398975595e-33)
    i32.trunc_f32_s
    i64.extend_i32_u
    i64.extend32_s
    call $function_2358763765
    nop
    (f64.const 9.422884060036261e+145)
    ref.func $function_2358763765
    drop
    f64.nearest
    drop
    i64.eqz
    call $function_2358763765
    i32.clz
    drop
    ref.func $function_2358763765
    (f64.const 8.493740990701124e-202)
    nop
    drop
    drop
    i64.reinterpret_f64
    global.get $global_1776124928
    local.set 0
    (f64.const 5.415688047139449e-159)
    global.set $global_1776124928
    f32.convert_i64_u
)

)