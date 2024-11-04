peft_path="/data1/choins18/test/bookIPs-Solvook-LLM/saves/llama3.1_edu" #### must edit adapter path 


CUDA_VISIBLE_DEVICES=0 lm_eval --model hf --model_args pretrained="akjindal53244/Llama-3.1-Storm-8B",trust_remote_code=True,add_bos_token=True,peft=$peft_path --batch_size 4 --seed 42 --device cuda:0 --output_path test/akjindal53244/Llama-3.1-Storm-8B/reporting/all/ --tasks boolq,piqa,social_iqa,hellaswag,winogrande,arc_easy,arc_challenge,openbookqa,triviaqa,race --trust_remote_code
CUDA_VISIBLE_DEVICES=0 lm_eval --model hf --model_args pretrained="akjindal53244/Llama-3.1-Storm-8B",trust_remote_code=True,add_bos_token=True,peft=$peft_path --batch_size 4 --seed 42 --device cuda:0 --output_path test/akjindal53244/Llama-3.1-Storm-8B/reporting/race_middle/ --tasks Race_middle --apply_chat_template --trust_remote_code
CUDA_VISIBLE_DEVICES=0 lm_eval --model hf --model_args pretrained="akjindal53244/Llama-3.1-Storm-8B",trust_remote_code=True,add_bos_token=True,peft=$peft_path --batch_size 4 --seed 42 --device cuda:0 --output_path test/akjindal53244/Llama-3.1-Storm-8B/reporting/TVQA0/ --tasks triviaqa --trust_remote_code --num_fewshot 0
CUDA_VISIBLE_DEVICES=0 lm_eval --model hf --model_args pretrained="akjindal53244/Llama-3.1-Storm-8B",trust_remote_code=True,add_bos_token=True,peft=$peft_path --batch_size 4 --seed 42 --device cuda:0 --output_path test/akjindal53244/Llama-3.1-Storm-8B/reporting/TVQA1/ --tasks triviaqa --trust_remote_code --num_fewshot 1
CUDA_VISIBLE_DEVICES=0 lm_eval --model hf --model_args pretrained="akjindal53244/Llama-3.1-Storm-8B",trust_remote_code=True,add_bos_token=True,peft=$peft_path --batch_size 4 --seed 42 --device cuda:0 --output_path test/akjindal53244/Llama-3.1-Storm-8B/reporting/TVQA5/ --tasks triviaqa --trust_remote_code --num_fewshot 5
CUDA_VISIBLE_DEVICES=0 lm_eval --model hf --model_args pretrained="akjindal53244/Llama-3.1-Storm-8B",trust_remote_code=True,add_bos_token=True,peft=$peft_path --batch_size 4 --seed 42 --device cuda:0 --output_path test/akjindal53244/Llama-3.1-Storm-8B/reporting/TVQA64/ --tasks triviaqa --trust_remote_code --num_fewshot 64