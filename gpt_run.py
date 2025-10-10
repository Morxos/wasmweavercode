from experiments.eval.judge import judge_wasm_result_string
from experiments.eval.models.openai_models import Gpt41

wat_string = """
(module
(type $sig_run (func))
(import "env" "memory" (memory 1))
(global $global_2217324206 (mut f64) (f64.const -6.22483506436994e+18))
(global $global_1470011974 (mut i32) (i32.const -2080086848))
(global $global_3980827636 (mut i64) (i64.const -8657267721236372172))
(func $run (export "run")
    (local i64)
    (local $temp i32)
    block
        block
            block
                local.get 0
                ;;INSPECT
                f64.convert_i64_s
                global.set $global_2217324206
                local.get 0
                i32.wrap_i64
                global.set $global_1470011974
            end

            local.get 0
            i64.extend16_s
            i64.extend16_s
            i64.extend16_s
            i64.extend16_s
            i64.extend16_s
            i64.extend16_s
            global.set $global_3980827636
        end

        local.get 0
        i64.extend16_s
        i64.extend16_s
        i64.extend32_s
        i64.extend16_s
        i64.clz
        i64.eqz
        i64.load32_u
        i64.extend32_s
        i64.popcnt
        i64.clz
        i64.eqz
        global.set $global_1470011974
    end

    local.get 0
    global.set $global_3980827636
    local.get 0
    global.set $global_3980827636
    br 0
)

)

"""

meta_dict = {"stack_values":  [{"type":"i64","value":"0"}]}

print(judge_wasm_result_string(meta_dict, wat_string, Gpt41(), "stack"))