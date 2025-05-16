(module
(type $sig_run (func (result f64)))
(import "env" "memory" (memory 1))
(global $global_3938490455 (mut f32) (f32.const 3.4093381676171264e+17))
(global $global_706954165 (mut f64) (f64.const -7.822702410300396e+17))
(func $run (export "run") (result f64)
    (local f32 i32)
    (local $temp i32)
    (f32.const -1.057101099868322e-25)
    i32.const 9
    loop $b_loop_2981551416 (param i32)
        (i32.const 1515508222)
        i32.extend8_s
        drop
        (i64.const -3)
        block
            (f32.const -1.5022247192792305e-18)
            local.tee 0
            global.set $global_3938490455
            (i32.const -29563)
            i32.const 9
            loop $b_loop_3430512632 (param i32)
                (i32.const 459950585)
                local.set 1
                (i64.const -9684)
                drop
                (i32.const 9)
                br_if 1
                i32.const 1
                i32.sub
                local.tee $temp
                local.get $temp
                i32.const 0
                i32.gt_s
                br_if $b_loop_3430512632
                drop
            end
            (br_table 0)
        end

        f64.convert_i64_u
        global.set $global_706954165
        i32.const 1
        i32.sub
        local.tee $temp
        local.get $temp
        i32.const 0
        i32.gt_s
        br_if $b_loop_2981551416
        drop
    end
    f32.neg
    i64.trunc_f32_s
    f64.convert_i64_u
)

)