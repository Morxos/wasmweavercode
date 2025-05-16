(module
(type $sig_function_1921889698 (func (param f64) (result i32)))
(type $sig_run (func (result i64)))
(import "env" "memory" (memory 1))
(global $global_1017712693 (mut f32) (f32.const -1.224889763325018e+18))
(func $function_1921889698 (export "function_1921889698") (param f64) (result i32)
    (local i32)
    (local $temp i32)
    block
        (i32.const 2769)
        i32.extend16_s
        i32.extend16_s
        local.tee 1
        i64.extend_i32_s
        drop
    end

    nop
    global.get $global_1017712693
    global.get $global_1017712693
    f32.lt
)
(func $run (export "run") (result i64)
    (local i32 f64 f64)
    (local $temp i32)
    block
        (i32.const 72849400)
        f32.convert_i32_s
        global.set $global_1017712693
        local.get 0
        i32.const 9
        loop $b_loop_992745660 (param i32)
            (f32.const -7.581245185256161e+24)
            (f64.const 7.316831464258549e+183)
            drop
            (f32.const 2.0479420317982125e+27)
            f32.eq
            br_if 1
            i32.const 1
            i32.sub
            local.tee $temp
            local.get $temp
            i32.const 0
            i32.gt_s
            br_if $b_loop_992745660
            drop
        end
        (i64.const -46697)
        i32.wrap_i64
        i32.xor
        drop
    end

    block
        (i32.const 88077558)
        i64.extend_i32_s
        i32.wrap_i64
        i64.extend_i32_s
        block (param i64) (result f32)
            i64.extend16_s
            i64.eqz
            f64.convert_i32_u
            f64.neg
            local.tee 1
            local.set 1
            (i32.const 57578964)
            f32.convert_i32_s
        end

        global.set $global_1017712693
    end

    (i32.const 689446)
    i64.extend_i32_u
    f64.reinterpret_i64
    local.tee 2
    f64.floor
    call $function_1921889698
    local.set 0
    (i64.const -701879)
)

)