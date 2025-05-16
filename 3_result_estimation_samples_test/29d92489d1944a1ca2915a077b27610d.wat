(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(table $tab_3009205252 2 funcref)
(global $global_1249090392 (mut i32) (i32.const -143123083))
(global $global_266183626 (mut f32) (f32.const 4.533614370663432e+18))
(func $run (export "run") (result f64)
    (local i64 f32 i32 f32)
    (local $temp i32)
    local.get 0
    block
        (f64.const 1.310898569327773e-169)
        i64.trunc_f64_s
        local.set 0
        nop
        nop
        i32.const 9
        loop $b_loop_2089300367 (param i32)
            global.get $global_1249090392
            i32.const 9
            loop $b_loop_4075442359 (param i32)
                (f32.const 61.47239685058594)
                global.get $global_1249090392
                (f32.const -1.229085024473811e+36)
                f32.ceil
                f32.neg
                global.set $global_266183626
                i64.extend_i32_u
                drop
                local.tee 1
                i32.reinterpret_f32
                local.tee 2
                br_if 2
                (i64.const 23)
                local.set 0
                i32.const 1
                i32.sub
                local.tee $temp
                local.get $temp
                i32.const 0
                i32.gt_s
                br_if $b_loop_4075442359
                drop
            end
            nop
            i32.clz
            table.get $tab_3009205252
            drop
            (f32.const -8.274594001087932e-30)
            local.set 1
            i32.const 1
            i32.sub
            local.tee $temp
            local.get $temp
            i32.const 0
            i32.gt_s
            br_if $b_loop_2089300367
            drop
        end
    end

    i64.extend16_s
    f64.convert_i64_s
    i64.reinterpret_f64
    i32.wrap_i64
    f32.reinterpret_i32
    local.tee 3
    f32.ceil
    global.get $global_1249090392
    i64.extend_i32_s
    f32.convert_i64_u
    f32.eq
    f64.convert_i32_u
    return
)

)