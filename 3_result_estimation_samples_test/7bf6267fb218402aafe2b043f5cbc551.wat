(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_303191847 (mut i32) (i32.const -800294177))
(global $global_2881661317 (mut f64) (f64.const 2.123499112506884e+18))
(global $global_3984963328 (mut i64) (i64.const -3732337456791784391))
(global $global_1174816273 (mut f32) (f32.const 5.565853204127678e+18))
(func $run (export "run") (result f64)
    (local i64 f32 f64)
    (local $temp i32)
    nop
    global.get $global_303191847
    global.set $global_303191847
    (i32.const -8063)
    f32.convert_i32_s
    global.get $global_303191847
    i32.clz
    f64.convert_i32_u
    global.set $global_2881661317
    drop
    (i32.const -46850)
    global.set $global_303191847
    (i32.const -72)
    i32.ctz
    (i64.const -6440)
    f64.reinterpret_i64
    block (param f64)
        i32.const 9
        loop $b_loop_4017338800 (param i32)
            global.get $global_303191847
            i32.const 9
            loop $b_loop_3629578689 (param i32)
                (f32.const 4.731361088639861e-34)
                drop
                (i64.const 12990386)
                global.set $global_3984963328
                (i64.const 847216246)
                local.tee 0
                f32.convert_i64_u
                global.set $global_1174816273
                global.get $global_303191847
                nop
                f32.convert_i32_s
                local.set 1
                global.get $global_303191847
                (f32.const -8.900998779380557e-27)
                f32.abs
                drop
                br_if 2
                (f32.const 1.8266019807811062e-09)
                i64.trunc_f32_s
                local.get 0
                i64.rem_u
                local.set 0
                i32.const 1
                i32.sub
                local.tee $temp
                local.get $temp
                i32.const 0
                i32.gt_s
                br_if $b_loop_3629578689
                drop
            end
            f64.convert_i32_u
            global.set $global_2881661317
            local.get 0
            f64.convert_i64_u
            i32.trunc_f64_s
            f64.convert_i32_u
            block (param f64)
                f32.demote_f64
                i32.trunc_f32_u
                i32.extend8_s
                f64.convert_i32_u
                f64.ceil
                f64.floor
                local.set 2
            end

            i32.const 1
            i32.sub
            local.tee $temp
            local.get $temp
            i32.const 0
            i32.gt_s
            br_if $b_loop_4017338800
            drop
        end
        i64.reinterpret_f64
        (i64.const 822736)
        i64.ctz
        i64.le_u
        i32.eqz
        br_if 0
    end

    f32.reinterpret_i32
    f64.promote_f32
)

)