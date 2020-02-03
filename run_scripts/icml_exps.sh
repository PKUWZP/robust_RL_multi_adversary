#!/usr/bin/env bash

# Hopper grid search experiments, 1/31

# 0 adv grid search
#ray exec ../autoscale.yaml "python /home/ubuntu/adversarial_sim2real/run_scripts/pendulum/run_adv_lerrel.py \
#--train_batch_size 100000 --num_iters 700 --checkpoint_freq 100 --num_concat_states 1 \
#--num_adv_strengths 0 --advs_per_strength 0 --advs_per_rew 0 --num_adv_rews 0 --use_s3 --env_name hopper \
#--exp_title hop_0adv_concat1_grid --num_cpus 10 --run_transfer_tests --multi_node \
#--grid_search" \
#--start --stop --tmux --cluster-name=ev_pend_test1
#
## 0 adv with memory grid search
#ray exec ../autoscale.yaml "python /home/ubuntu/adversarial_sim2real/run_scripts/pendulum/run_adv_lerrel.py \
#--train_batch_size 100000 --num_iters 700 --checkpoint_freq 100 --num_concat_states 10 \
#--num_adv_strengths 0 --advs_per_strength 0 --advs_per_rew 0 --num_adv_rews 0 --use_s3 --env_name hopper \
#--exp_title hop_0adv_concat10_grid --num_cpus 10 --run_transfer_tests --multi_node \
#--grid_search" \
#--start --stop --tmux --cluster-name=ev_pend_test2
#
## 1 adv grid search
#ray exec ../autoscale.yaml "python /home/ubuntu/adversarial_sim2real/run_scripts/pendulum/run_adv_lerrel.py \
#--train_batch_size 100000 --num_iters 700 --checkpoint_freq 100 --num_concat_states 1 \
#--num_adv_strengths 1 --advs_per_strength 1 --advs_per_rew 1 --num_adv_rews 1 --use_s3 --env_name hopper \
#--exp_title hop_1adv_concat1_grid_str0p25 --num_cpus 10 --run_transfer_tests --multi_node --adv_strength 0.25 \
#--grid_search" \
#--start --stop --tmux --cluster-name=ev_pend_test3
#
## 1 adv grid search w/ memory
#ray exec ../autoscale.yaml "python /home/ubuntu/adversarial_sim2real/run_scripts/pendulum/run_adv_lerrel.py \
#--train_batch_size 100000 --num_iters 700 --checkpoint_freq 100 --num_concat_states 10 \
#--num_adv_strengths 1 --advs_per_strength 1 --advs_per_rew 1 --num_adv_rews 1 --use_s3 --env_name hopper \
#--exp_title hop_1adv_concat10_grid_str0p25 --num_cpus 10 --run_transfer_tests --multi_node --adv_strength 0.25 \
#--grid_search" \
#--start --stop --tmux --cluster-name=ev_pend_test4
#
## 5 adv grid search w/ reward ranges
#ray exec ../autoscale.yaml "python /home/ubuntu/adversarial_sim2real/run_scripts/pendulum/run_adv_lerrel.py \
#--train_batch_size 100000 --num_iters 700 --checkpoint_freq 100 --num_concat_states 1 \
#--num_adv_strengths 1 --advs_per_strength 5 --advs_per_rew 1 --num_adv_rews 5 --use_s3 --env_name hopper \
#--exp_title hop_5adv_concat1_grid_str0p25rew_l1000_h3500 --num_cpus 10 --run_transfer_tests --multi_node --adv_strength 0.25 \
#--grid_search --low_reward 1000 --high_reward 3500 --reward_range" \
#--start --stop --tmux --cluster-name=ev_pend_test5
#
## 5 adv grid search w/ memory and reward ranges
#ray exec ../autoscale.yaml "python /home/ubuntu/adversarial_sim2real/run_scripts/pendulum/run_adv_lerrel.py \
#--train_batch_size 100000 --num_iters 700 --checkpoint_freq 100 --num_concat_states 10 \
#--num_adv_strengths 1 --advs_per_strength 5 --advs_per_rew 1 --num_adv_rews 5 --use_s3 --env_name hopper \
#--exp_title hop_5adv_concat10_grid_str0p25rew_l1000_h3500 --num_cpus 10 --run_transfer_tests --multi_node --adv_strength 0.25 \
#--grid_search --low_reward 1000 --high_reward 3500 --reward_range" \
#--start --stop --tmux --cluster-name=ev_pend_test6
#
## 5 adv grid search w/ no reward ranges
#ray exec ../autoscale.yaml "python /home/ubuntu/adversarial_sim2real/run_scripts/pendulum/run_adv_lerrel.py \
#--train_batch_size 100000 --num_iters 700 --checkpoint_freq 100 --num_concat_states 1 \
#--num_adv_strengths 1 --advs_per_strength 5 --advs_per_rew 1 --num_adv_rews 5 --use_s3 --env_name hopper \
#--exp_title hop_5adv_concat1_grid_str0p25_norew --num_cpus 10 --run_transfer_tests --multi_node --adv_strength 0.25 \
#--grid_search" \
#--start --stop --tmux --cluster-name=ev_pend_test7
#
## 5 adv grid search w/ memory and no reward ranges
#ray exec ../autoscale.yaml "python /home/ubuntu/adversarial_sim2real/run_scripts/pendulum/run_adv_lerrel.py \
#--train_batch_size 100000 --num_iters 700 --checkpoint_freq 100 --num_concat_states 10 \
#--num_adv_strengths 1 --advs_per_strength 5 --advs_per_rew 1 --num_adv_rews 5 --use_s3 --env_name hopper \
#--exp_title hop_5adv_concat10_grid_str0p25_norew --num_cpus 10 --run_transfer_tests --multi_node --adv_strength 0.25 \
#--grid_search" \
#--start --stop --tmux --cluster-name=ev_pend_test8
#
## 10 adv grid search w/ reward ranges
#ray exec ../autoscale.yaml "python /home/ubuntu/adversarial_sim2real/run_scripts/pendulum/run_adv_lerrel.py \
#--train_batch_size 100000 --num_iters 700 --checkpoint_freq 100 --num_concat_states 1 \
#--num_adv_strengths 1 --advs_per_strength 10 --advs_per_rew 1 --num_adv_rews 10 --use_s3 --env_name hopper \
#--exp_title hop_10adv_concat1_grid_str0p25rew_l1000_h3500 --num_cpus 10 --run_transfer_tests --multi_node --adv_strength 0.25 \
#--grid_search --low_reward 1000 --high_reward 3500 --reward_range" \
#--start --stop --tmux --cluster-name=ev_pend_test9
#
## 10 adv grid search w/ memory and reward ranges
#ray exec ../autoscale.yaml "python /home/ubuntu/adversarial_sim2real/run_scripts/pendulum/run_adv_lerrel.py \
#--train_batch_size 100000 --num_iters 700 --checkpoint_freq 100 --num_concat_states 10 \
#--num_adv_strengths 1 --advs_per_strength 10 --advs_per_rew 1 --num_adv_rews 10 --use_s3 --env_name hopper \
#--exp_title hop_10adv_concat10_grid_str0p25rew_l1000_h3500 --num_cpus 10 --run_transfer_tests --multi_node --adv_strength 0.25 \
#--grid_search --low_reward 1000 --high_reward 3500 --reward_range" \
#--start --stop --tmux --cluster-name=ev_pend_test10
#
## 10 adv grid search w/ no reward ranges
#ray exec ../autoscale.yaml "python /home/ubuntu/adversarial_sim2real/run_scripts/pendulum/run_adv_lerrel.py \
#--train_batch_size 100000 --num_iters 700 --checkpoint_freq 100 --num_concat_states 1 \
#--num_adv_strengths 1 --advs_per_strength 10 --advs_per_rew 1 --num_adv_rews 10 --use_s3 --env_name hopper \
#--exp_title hop_10adv_concat1_grid_str0p25_norew --num_cpus 10 --run_transfer_tests --multi_node --adv_strength 0.25 \
#--grid_search" \
#--start --stop --tmux --cluster-name=ev_pend_test11
#
## 10 adv grid search w/ memory and no reward ranges
#ray exec ../autoscale.yaml "python /home/ubuntu/adversarial_sim2real/run_scripts/pendulum/run_adv_lerrel.py \
#--train_batch_size 100000 --num_iters 700 --checkpoint_freq 100 --num_concat_states 10 \
#--num_adv_strengths 1 --advs_per_strength 10 --advs_per_rew 1 --num_adv_rews 10 --use_s3 --env_name hopper \
#--exp_title hop_10adv_concat10_grid_str0p25_norew --num_cpus 10 --run_transfer_tests --multi_node --adv_strength 0.25 \
#--grid_search" \
#--start --stop --tmux --cluster-name=ev_pend_test12
#
## Domain randomization experiment w/ grid search
#ray exec ../autoscale.yaml "python /home/ubuntu/adversarial_sim2real/run_scripts/pendulum/run_adv_lerrel.py \
#--train_batch_size 100000 --num_iters 700 --checkpoint_freq 100 --num_concat_states 1 \
#--num_adv_strengths 0 --advs_per_strength 0 --advs_per_rew 0 --num_adv_rews 0 --use_s3 --env_name hopper \
#--exp_title hop_0adv_concat1_grid_dr --num_cpus 10 --run_transfer_tests --multi_node \
#--grid_search --domain_randomization" \
#--start --stop --tmux --cluster-name=ev_pend_test13
#
## Domain randomization experiment w/ grid search and memory
#ray exec ../autoscale.yaml "python /home/ubuntu/adversarial_sim2real/run_scripts/pendulum/run_adv_lerrel.py \
#--train_batch_size 100000 --num_iters 700 --checkpoint_freq 100 --num_concat_states 10 \
#--num_adv_strengths 0 --advs_per_strength 0 --advs_per_rew 0 --num_adv_rews 0 --use_s3 --env_name hopper \
#--exp_title hop_0adv_concat10_grid_dr --num_cpus 10 --run_transfer_tests --multi_node \
#--grid_search --domain_randomization" \
#--start --stop --tmux --cluster-name=ev_pend_test14
#
## Extreme domain randomization w/ grid search
#ray exec ../autoscale.yaml "python /home/ubuntu/adversarial_sim2real/run_scripts/pendulum/run_adv_lerrel.py \
#--train_batch_size 100000 --num_iters 700 --checkpoint_freq 100 --num_concat_states 1 \
#--num_adv_strengths 0 --advs_per_strength 0 --advs_per_rew 0 --num_adv_rews 0 --use_s3 --env_name hopper \
#--exp_title hop_0adv_concat1_grid_extremedr --num_cpus 10 --run_transfer_tests --multi_node \
#--grid_search --extreme_domain_randomization" \
#--start --stop --tmux --cluster-name=ev_pend_test15
#
## Extreme domain randomization w/ grid search and memory
#ray exec ../autoscale.yaml "python /home/ubuntu/adversarial_sim2real/run_scripts/pendulum/run_adv_lerrel.py \
#--train_batch_size 100000 --num_iters 700 --checkpoint_freq 100 --num_concat_states 10 \
#--num_adv_strengths 0 --advs_per_strength 0 --advs_per_rew 0 --num_adv_rews 0 --use_s3 --env_name hopper \
#--exp_title hop_0adv_concat10_grid_extremedr --num_cpus 10 --run_transfer_tests --multi_node \
#--grid_search --extreme_domain_randomization" \
#--start --stop --tmux --cluster-name=ev_pend_test16

# Hopper grid search experiments, 2/01

# 0 adv grid search
#ray exec ../autoscale.yaml "python /home/ubuntu/adversarial_sim2real/run_scripts/pendulum/run_adv_lerrel.py \
#--train_batch_size 100000 --num_iters 700 --checkpoint_freq 100 --num_concat_states 1 \
#--num_adv_strengths 0 --advs_per_strength 0 --advs_per_rew 0 --num_adv_rews 0 --use_s3 --env_name hopper \
#--exp_title hop_0adv_concat1_grid --num_cpus 10 --run_transfer_tests --multi_node \
#--grid_search --adv_all_actions --concat_actions" \
#--start --stop --tmux --cluster-name=ev_pend_test1
#
## 0 adv with memory grid search
#ray exec ../autoscale.yaml "python /home/ubuntu/adversarial_sim2real/run_scripts/pendulum/run_adv_lerrel.py \
#--train_batch_size 100000 --num_iters 700 --checkpoint_freq 100 --num_concat_states 10 \
#--num_adv_strengths 0 --advs_per_strength 0 --advs_per_rew 0 --num_adv_rews 0 --use_s3 --env_name hopper \
#--exp_title hop_0adv_concat10_grid --num_cpus 10 --run_transfer_tests --multi_node \
#--grid_search --adv_all_actions --concat_actions" \
#--start --stop --tmux --cluster-name=ev_pend_test2
#
## 1 adv grid search
#ray exec ../autoscale.yaml "python /home/ubuntu/adversarial_sim2real/run_scripts/pendulum/run_adv_lerrel.py \
#--train_batch_size 100000 --num_iters 700 --checkpoint_freq 100 --num_concat_states 1 \
#--num_adv_strengths 1 --advs_per_strength 1 --advs_per_rew 1 --num_adv_rews 1 --use_s3 --env_name hopper \
#--exp_title hop_1adv_concat1_grid_str0p25 --num_cpus 10 --run_transfer_tests --multi_node --adv_strength 0.25 \
#--grid_search --adv_all_actions --concat_actions" \
#--start --stop --tmux --cluster-name=ev_pend_test3
#
## 1 adv grid search w/ memory
#ray exec ../autoscale.yaml "python /home/ubuntu/adversarial_sim2real/run_scripts/pendulum/run_adv_lerrel.py \
#--train_batch_size 100000 --num_iters 700 --checkpoint_freq 100 --num_concat_states 10 \
#--num_adv_strengths 1 --advs_per_strength 1 --advs_per_rew 1 --num_adv_rews 1 --use_s3 --env_name hopper \
#--exp_title hop_1adv_concat10_grid_str0p25 --num_cpus 10 --run_transfer_tests --multi_node --adv_strength 0.25 \
#--grid_search --adv_all_actions --concat_actions" \
#--start --stop --tmux --cluster-name=ev_pend_test4
#
## 5 adv grid search w/ reward ranges
#ray exec ../autoscale.yaml "python /home/ubuntu/adversarial_sim2real/run_scripts/pendulum/run_adv_lerrel.py \
#--train_batch_size 100000 --num_iters 700 --checkpoint_freq 100 --num_concat_states 1 \
#--num_adv_strengths 1 --advs_per_strength 5 --advs_per_rew 1 --num_adv_rews 5 --use_s3 --env_name hopper \
#--exp_title hop_5adv_concat1_grid_str0p25rew_l1000_h3500 --num_cpus 10 --run_transfer_tests --multi_node --adv_strength 0.25 \
#--grid_search --low_reward 1000 --high_reward 3500 --reward_range --adv_all_actions --concat_actions" \
#--start --stop --tmux --cluster-name=ev_pend_test5
#
## 5 adv grid search w/ memory and reward ranges
#ray exec ../autoscale.yaml "python /home/ubuntu/adversarial_sim2real/run_scripts/pendulum/run_adv_lerrel.py \
#--train_batch_size 100000 --num_iters 700 --checkpoint_freq 100 --num_concat_states 10 \
#--num_adv_strengths 1 --advs_per_strength 5 --advs_per_rew 1 --num_adv_rews 5 --use_s3 --env_name hopper \
#--exp_title hop_5adv_concat10_grid_str0p25rew_l1000_h3500 --num_cpus 10 --run_transfer_tests --multi_node --adv_strength 0.25 \
#--grid_search --low_reward 1000 --high_reward 3500 --reward_range --adv_all_actions --concat_actions" \
#--start --stop --tmux --cluster-name=ev_pend_test6
#
## 5 adv grid search w/ no reward ranges
#ray exec ../autoscale.yaml "python /home/ubuntu/adversarial_sim2real/run_scripts/pendulum/run_adv_lerrel.py \
#--train_batch_size 100000 --num_iters 700 --checkpoint_freq 100 --num_concat_states 1 \
#--num_adv_strengths 1 --advs_per_strength 5 --advs_per_rew 1 --num_adv_rews 5 --use_s3 --env_name hopper \
#--exp_title hop_5adv_concat1_grid_str0p25_norew --num_cpus 10 --run_transfer_tests --multi_node --adv_strength 0.25 \
#--grid_search --adv_all_actions --concat_actions" \
#--start --stop --tmux --cluster-name=ev_pend_test7
#
## 5 adv grid search w/ memory and no reward ranges
#ray exec ../autoscale.yaml "python /home/ubuntu/adversarial_sim2real/run_scripts/pendulum/run_adv_lerrel.py \
#--train_batch_size 100000 --num_iters 700 --checkpoint_freq 100 --num_concat_states 10 \
#--num_adv_strengths 1 --advs_per_strength 5 --advs_per_rew 1 --num_adv_rews 5 --use_s3 --env_name hopper \
#--exp_title hop_5adv_concat10_grid_str0p25_norew --num_cpus 10 --run_transfer_tests --multi_node --adv_strength 0.25 \
#--grid_search --adv_all_actions --concat_actions" \
#--start --stop --tmux --cluster-name=ev_pend_test8
#
## 10 adv grid search w/ reward ranges
#ray exec ../autoscale.yaml "python /home/ubuntu/adversarial_sim2real/run_scripts/pendulum/run_adv_lerrel.py \
#--train_batch_size 100000 --num_iters 700 --checkpoint_freq 100 --num_concat_states 1 \
#--num_adv_strengths 1 --advs_per_strength 10 --advs_per_rew 1 --num_adv_rews 10 --use_s3 --env_name hopper \
#--exp_title hop_10adv_concat1_grid_str0p25rew_l1000_h3500 --num_cpus 10 --run_transfer_tests --multi_node --adv_strength 0.25 \
#--grid_search --low_reward 1000 --high_reward 3500 --reward_range --adv_all_actions --concat_actions" \
#--start --stop --tmux --cluster-name=ev_pend_test9
#
## 10 adv grid search w/ memory and reward ranges
#ray exec ../autoscale.yaml "python /home/ubuntu/adversarial_sim2real/run_scripts/pendulum/run_adv_lerrel.py \
#--train_batch_size 100000 --num_iters 700 --checkpoint_freq 100 --num_concat_states 10 \
#--num_adv_strengths 1 --advs_per_strength 10 --advs_per_rew 1 --num_adv_rews 10 --use_s3 --env_name hopper \
#--exp_title hop_10adv_concat10_grid_str0p25rew_l1000_h3500 --num_cpus 10 --run_transfer_tests --multi_node --adv_strength 0.25 \
#--grid_search --low_reward 1000 --high_reward 3500 --reward_range --adv_all_actions --concat_actions" \
#--start --stop --tmux --cluster-name=ev_pend_test10
#
## 10 adv grid search w/ no reward ranges
#ray exec ../autoscale.yaml "python /home/ubuntu/adversarial_sim2real/run_scripts/pendulum/run_adv_lerrel.py \
#--train_batch_size 100000 --num_iters 700 --checkpoint_freq 100 --num_concat_states 1 \
#--num_adv_strengths 1 --advs_per_strength 10 --advs_per_rew 1 --num_adv_rews 10 --use_s3 --env_name hopper \
#--exp_title hop_10adv_concat1_grid_str0p25_norew --num_cpus 10 --run_transfer_tests --multi_node --adv_strength 0.25 \
#--grid_search --adv_all_actions --concat_actions" \
#--start --stop --tmux --cluster-name=ev_pend_test11
#
## 10 adv grid search w/ memory and no reward ranges
#ray exec ../autoscale.yaml "python /home/ubuntu/adversarial_sim2real/run_scripts/pendulum/run_adv_lerrel.py \
#--train_batch_size 100000 --num_iters 700 --checkpoint_freq 100 --num_concat_states 10 \
#--num_adv_strengths 1 --advs_per_strength 10 --advs_per_rew 1 --num_adv_rews 10 --use_s3 --env_name hopper \
#--exp_title hop_10adv_concat10_grid_str0p25_norew --num_cpus 10 --run_transfer_tests --multi_node --adv_strength 0.25 \
#--grid_search --adv_all_actions --concat_actions" \
#--start --stop --tmux --cluster-name=ev_pend_test12
#
## Domain randomization experiment w/ grid search
#ray exec ../autoscale.yaml "python /home/ubuntu/adversarial_sim2real/run_scripts/pendulum/run_adv_lerrel.py \
#--train_batch_size 100000 --num_iters 700 --checkpoint_freq 100 --num_concat_states 1 \
#--num_adv_strengths 0 --advs_per_strength 0 --advs_per_rew 0 --num_adv_rews 0 --use_s3 --env_name hopper \
#--exp_title hop_0adv_concat1_grid_dr --num_cpus 10 --run_transfer_tests --multi_node \
#--grid_search --domain_randomization --adv_all_actions --concat_actions" \
#--start --stop --tmux --cluster-name=ev_pend_test13
#
## Domain randomization experiment w/ grid search and memory
#ray exec ../autoscale.yaml "python /home/ubuntu/adversarial_sim2real/run_scripts/pendulum/run_adv_lerrel.py \
#--train_batch_size 100000 --num_iters 700 --checkpoint_freq 100 --num_concat_states 10 \
#--num_adv_strengths 0 --advs_per_strength 0 --advs_per_rew 0 --num_adv_rews 0 --use_s3 --env_name hopper \
#--exp_title hop_0adv_concat10_grid_dr --num_cpus 10 --run_transfer_tests --multi_node \
#--grid_search --domain_randomization --adv_all_actions --concat_actions" \
#--start --stop --tmux --cluster-name=ev_pend_test14
#
## Extreme domain randomization w/ grid search
#ray exec ../autoscale.yaml "python /home/ubuntu/adversarial_sim2real/run_scripts/pendulum/run_adv_lerrel.py \
#--train_batch_size 100000 --num_iters 700 --checkpoint_freq 100 --num_concat_states 1 \
#--num_adv_strengths 0 --advs_per_strength 0 --advs_per_rew 0 --num_adv_rews 0 --use_s3 --env_name hopper \
#--exp_title hop_0adv_concat1_grid_extremedr --num_cpus 10 --run_transfer_tests --multi_node \
#--grid_search --extreme_domain_randomization --adv_all_actions --concat_actions" \
#--start --stop --tmux --cluster-name=ev_pend_test15
#
## Extreme domain randomization w/ grid search and memory
#ray exec ../autoscale.yaml "python /home/ubuntu/adversarial_sim2real/run_scripts/pendulum/run_adv_lerrel.py \
#--train_batch_size 100000 --num_iters 700 --checkpoint_freq 100 --num_concat_states 10 \
#--num_adv_strengths 0 --advs_per_strength 0 --advs_per_rew 0 --num_adv_rews 0 --use_s3 --env_name hopper \
#--exp_title hop_0adv_concat10_grid_extremedr --num_cpus 10 --run_transfer_tests --multi_node \
#--grid_search --extreme_domain_randomization --adv_all_actions --concat_actions" \
#--start --stop --tmux --cluster-name=ev_pend_test16

#####################################################################################################################
# Seed search experiments
# 0 adv seed search
#ray exec ../autoscale.yaml "python /home/ubuntu/adversarial_sim2real/run_scripts/pendulum/run_adv_lerrel.py \
#--train_batch_size 100000 --num_iters 700 --checkpoint_freq 100 --num_concat_states 1 \
#--num_adv_strengths 0 --advs_per_strength 0 --advs_per_rew 0 --num_adv_rews 0 --use_s3 --env_name hopper \
#--exp_title hop_0adv_concat1_seed_lv0p9_lr0005 --num_cpus 6 --run_transfer_tests --multi_node \
#--seed_search --adv_all_actions --concat_actions --lambda_val 0.9 --lr .0005" \
#--start --stop --tmux --cluster-name=ev_pend_test1
#
## 0 adv with memory seed search
#ray exec ../autoscale.yaml "python /home/ubuntu/adversarial_sim2real/run_scripts/pendulum/run_adv_lerrel.py \
#--train_batch_size 100000 --num_iters 700 --checkpoint_freq 100 --num_concat_states 10 \
#--num_adv_strengths 0 --advs_per_strength 0 --advs_per_rew 0 --num_adv_rews 0 --use_s3 --env_name hopper \
#--exp_title hop_0adv_concat10_seed_lv0p5_lr0005 --num_cpus 6 --run_transfer_tests --multi_node \
#--seed_search --adv_all_actions --concat_actions --lambda_val 0.5 --lr .0005" \
#--start --stop --tmux --cluster-name=ev_pend_test2
#
## 1 adv seed search
#ray exec ../autoscale.yaml "python /home/ubuntu/adversarial_sim2real/run_scripts/pendulum/run_adv_lerrel.py \
#--train_batch_size 100000 --num_iters 700 --checkpoint_freq 100 --num_concat_states 1 \
#--num_adv_strengths 1 --advs_per_strength 1 --advs_per_rew 1 --num_adv_rews 1 --use_s3 --env_name hopper \
#--exp_title hop_1adv_concat1_seed_str0p25_lv0p0_lr0005 --num_cpus 6 --run_transfer_tests --multi_node --adv_strength 0.25 \
#--seed_search --adv_all_actions --concat_actions --lambda_val 0.9 --lr .0005" \
#--start --stop --tmux --cluster-name=ev_pend_test3
#
## 1 adv seed search w/ memory
#ray exec ../autoscale.yaml "python /home/ubuntu/adversarial_sim2real/run_scripts/pendulum/run_adv_lerrel.py \
#--train_batch_size 100000 --num_iters 700 --checkpoint_freq 100 --num_concat_states 10 \
#--num_adv_strengths 1 --advs_per_strength 1 --advs_per_rew 1 --num_adv_rews 1 --use_s3 --env_name hopper \
#--exp_title hop_1adv_concat10_seed_str0p25_lv1p0_lr0005 --num_cpus 6 --run_transfer_tests --multi_node --adv_strength 0.25 \
#--seed_search --adv_all_actions --concat_actions --lambda_val 1.0 --lr .0005" \
#--start --stop --tmux --cluster-name=ev_pend_test4
#
## 5 adv seed search w/ reward ranges
#ray exec ../autoscale.yaml "python /home/ubuntu/adversarial_sim2real/run_scripts/pendulum/run_adv_lerrel.py \
#--train_batch_size 100000 --num_iters 700 --checkpoint_freq 100 --num_concat_states 1 \
#--num_adv_strengths 1 --advs_per_strength 5 --advs_per_rew 1 --num_adv_rews 5 --use_s3 --env_name hopper \
#--exp_title hop_5adv_concat1_seed_str0p25rew_l1000_h3500_lv0p9_lr0005 --num_cpus 6 --run_transfer_tests --multi_node --adv_strength 0.25 \
#--seed_search --low_reward 1000 --high_reward 3500 --reward_range --adv_all_actions --concat_actions \
#--lambda_val 0.9 --lr .0005" \
#--start --stop --tmux --cluster-name=ev_pend_test5
#
## 5 adv seed search w/ memory and reward ranges
#ray exec ../autoscale.yaml "python /home/ubuntu/adversarial_sim2real/run_scripts/pendulum/run_adv_lerrel.py \
#--train_batch_size 100000 --num_iters 700 --checkpoint_freq 100 --num_concat_states 10 \
#--num_adv_strengths 1 --advs_per_strength 5 --advs_per_rew 1 --num_adv_rews 5 --use_s3 --env_name hopper \
#--exp_title hop_5adv_concat10_seed_str0p25rew_l1000_h3500_lv0p9_lr0005 --num_cpus 6 --run_transfer_tests --multi_node --adv_strength 0.25 \
#--seed_search --low_reward 1000 --high_reward 3500 --reward_range --adv_all_actions --concat_actions \
#--lambda_val 0.9 --lr .0005" \
#--start --stop --tmux --cluster-name=ev_pend_test6
#
## 5 adv seed search w/ no reward ranges
#ray exec ../autoscale.yaml "python /home/ubuntu/adversarial_sim2real/run_scripts/pendulum/run_adv_lerrel.py \
#--train_batch_size 100000 --num_iters 700 --checkpoint_freq 100 --num_concat_states 1 \
#--num_adv_strengths 1 --advs_per_strength 5 --advs_per_rew 1 --num_adv_rews 5 --use_s3 --env_name hopper \
#--exp_title hop_5adv_concat1_seed_str0p25_norew_lv0p5_lr00005 --num_cpus 6 --run_transfer_tests --multi_node --adv_strength 0.25 \
#--seed_search --adv_all_actions --concat_actions --lambda_val 0.5 --lr .00005" \
#--start --stop --tmux --cluster-name=ev_pend_test7
#
## 5 adv seed search w/ memory and no reward ranges
#ray exec ../autoscale.yaml "python /home/ubuntu/adversarial_sim2real/run_scripts/pendulum/run_adv_lerrel.py \
#--train_batch_size 100000 --num_iters 700 --checkpoint_freq 100 --num_concat_states 10 \
#--num_adv_strengths 1 --advs_per_strength 5 --advs_per_rew 1 --num_adv_rews 5 --use_s3 --env_name hopper \
#--exp_title hop_5adv_concat10_seed_str0p25_norew_lv0p5_lr00005 --num_cpus 6 --run_transfer_tests --multi_node --adv_strength 0.25 \
#--seed_search --adv_all_actions --concat_actions --lambda_val 0.5 --lr .00005" \
#--start --stop --tmux --cluster-name=ev_pend_test8
#
## 10 adv seed search w/ reward ranges
#ray exec ../autoscale.yaml "python /home/ubuntu/adversarial_sim2real/run_scripts/pendulum/run_adv_lerrel.py \
#--train_batch_size 100000 --num_iters 700 --checkpoint_freq 100 --num_concat_states 1 \
#--num_adv_strengths 1 --advs_per_strength 10 --advs_per_rew 1 --num_adv_rews 10 --use_s3 --env_name hopper \
#--exp_title hop_10adv_concat1_seed_str0p25rew_l1000_h3500_lv0p5_lr0005 --num_cpus 6 --run_transfer_tests --multi_node --adv_strength 0.25 \
#--seed_search --low_reward 1000 --high_reward 3500 --reward_range --adv_all_actions --concat_actions \
#--lambda_val 0.5 --lr .0005" \
#--start --stop --tmux --cluster-name=ev_pend_test9
#
## 10 adv seed search w/ memory and reward ranges
#ray exec ../autoscale.yaml "python /home/ubuntu/adversarial_sim2real/run_scripts/pendulum/run_adv_lerrel.py \
#--train_batch_size 100000 --num_iters 700 --checkpoint_freq 100 --num_concat_states 10 \
#--num_adv_strengths 1 --advs_per_strength 10 --advs_per_rew 1 --num_adv_rews 10 --use_s3 --env_name hopper \
#--exp_title hop_10adv_concat10_seed_str0p25rew_l1000_h3500_lv0p9_lr0005 --num_cpus 6 --run_transfer_tests --multi_node --adv_strength 0.25 \
#--seed_search --low_reward 1000 --high_reward 3500 --reward_range --adv_all_actions --concat_actions \
#--lambda_val 0.9 --lr .0005" \
#--start --stop --tmux --cluster-name=ev_pend_test10
#
## 10 adv seed search w/ no reward ranges
#ray exec ../autoscale.yaml "python /home/ubuntu/adversarial_sim2real/run_scripts/pendulum/run_adv_lerrel.py \
#--train_batch_size 100000 --num_iters 700 --checkpoint_freq 100 --num_concat_states 1 \
#--num_adv_strengths 1 --advs_per_strength 10 --advs_per_rew 1 --num_adv_rews 10 --use_s3 --env_name hopper \
#--exp_title hop_10adv_concat1_seed_str0p25_norew_lv0p5_lr00005 --num_cpus 6 --run_transfer_tests --multi_node --adv_strength 0.25 \
#--seed_search --adv_all_actions --concat_actions --lambda_val 0.5 --lr .00005" \
#--start --stop --tmux --cluster-name=ev_pend_test11
#
## 10 adv seed search w/ memory and no reward ranges
#ray exec ../autoscale.yaml "python /home/ubuntu/adversarial_sim2real/run_scripts/pendulum/run_adv_lerrel.py \
#--train_batch_size 100000 --num_iters 700 --checkpoint_freq 100 --num_concat_states 10 \
#--num_adv_strengths 1 --advs_per_strength 10 --advs_per_rew 1 --num_adv_rews 10 --use_s3 --env_name hopper \
#--exp_title hop_10adv_concat10_seed_str0p25_norew_lv0p9_lr0005 --num_cpus 6 --run_transfer_tests --multi_node --adv_strength 0.25 \
#--seed_search --adv_all_actions --concat_actions --lambda_val 0.9 --lr .0005" \
#--start --stop --tmux --cluster-name=ev_pend_test12
#
## Domain randomization experiment w/ seed search
#ray exec ../autoscale.yaml "python /home/ubuntu/adversarial_sim2real/run_scripts/pendulum/run_adv_lerrel.py \
#--train_batch_size 100000 --num_iters 700 --checkpoint_freq 100 --num_concat_states 1 \
#--num_adv_strengths 0 --advs_per_strength 0 --advs_per_rew 0 --num_adv_rews 0 --use_s3 --env_name hopper \
#--exp_title hop_0adv_concat1_seed_dr_lv0p9_lr0005 --num_cpus 6 --run_transfer_tests --multi_node \
#--seed_search --domain_randomization --adv_all_actions --concat_actions --lambda_val 0.9 --lr .0005" \
#--start --stop --tmux --cluster-name=ev_pend_test13
#
## Domain randomization experiment w/ seed search and memory
#ray exec ../autoscale.yaml "python /home/ubuntu/adversarial_sim2real/run_scripts/pendulum/run_adv_lerrel.py \
#--train_batch_size 100000 --num_iters 700 --checkpoint_freq 100 --num_concat_states 10 \
#--num_adv_strengths 0 --advs_per_strength 0 --advs_per_rew 0 --num_adv_rews 0 --use_s3 --env_name hopper \
#--exp_title hop_0adv_concat10_seed_dr_lv0p5_lr00005 --num_cpus 6 --run_transfer_tests --multi_node \
#--seed_search --domain_randomization --adv_all_actions --concat_actions --lambda_val 0.5 --lr .00005" \
#--start --stop --tmux --cluster-name=ev_pend_test14
#
## Extreme domain randomization w/ seed search
#ray exec ../autoscale.yaml "python /home/ubuntu/adversarial_sim2real/run_scripts/pendulum/run_adv_lerrel.py \
#--train_batch_size 100000 --num_iters 700 --checkpoint_freq 100 --num_concat_states 1 \
#--num_adv_strengths 0 --advs_per_strength 0 --advs_per_rew 0 --num_adv_rews 0 --use_s3 --env_name hopper \
#--exp_title hop_0adv_concat1_seed_extremedr_lv0p5_lr0005 --num_cpus 6 --run_transfer_tests --multi_node \
#--seed_search --extreme_domain_randomization --adv_all_actions --concat_actions \
#--lambda_val 0.5 --lr .0005" \
#--start --stop --tmux --cluster-name=ev_pend_test15
#
## Extreme domain randomization w/ seed search and memory
#ray exec ../autoscale.yaml "python /home/ubuntu/adversarial_sim2real/run_scripts/pendulum/run_adv_lerrel.py \
#--train_batch_size 100000 --num_iters 700 --checkpoint_freq 100 --num_concat_states 10 \
#--num_adv_strengths 0 --advs_per_strength 0 --advs_per_rew 0 --num_adv_rews 0 --use_s3 --env_name hopper \
#--exp_title hop_0adv_concat10_seed_extremedr_lv0p9_lr00005 --num_cpus 6 --run_transfer_tests --multi_node \
#--seed_search --extreme_domain_randomization --adv_all_actions --concat_actions \
#--lambda_val 0.9 --lr .00005" \
#--start --stop --tmux --cluster-name=ev_pend_test16

###
# 2/03 exps
########

# 5 adv grid search w/ memory and reward ranges and DR
ray exec ../autoscale.yaml "python /home/ubuntu/adversarial_sim2real/run_scripts/pendulum/run_adv_lerrel.py \
--train_batch_size 100000 --num_iters 700 --checkpoint_freq 100 --num_concat_states 10 \
--num_adv_strengths 1 --advs_per_strength 5 --advs_per_rew 1 --num_adv_rews 5 --use_s3 --env_name hopper \
--exp_title hop_5adv_concat10_grid_str0p25rew_l1000_h3500_dr --num_cpus 10 --run_transfer_tests --multi_node --adv_strength 0.25 \
--grid_search --low_reward 1000 --high_reward 3500 --reward_range --adv_all_actions --concat_actions --domain_randomization" \
--start --stop --tmux --cluster-name=ev_pend_test6

# 5 adv grid search w/ memory and reward ranges and EDR
ray exec ../autoscale.yaml "python /home/ubuntu/adversarial_sim2real/run_scripts/pendulum/run_adv_lerrel.py \
--train_batch_size 100000 --num_iters 700 --checkpoint_freq 100 --num_concat_states 10 \
--num_adv_strengths 1 --advs_per_strength 5 --advs_per_rew 1 --num_adv_rews 5 --use_s3 --env_name hopper \
--exp_title hop_5adv_concat10_grid_str0p25rew_l1000_h3500_edr --num_cpus 10 --run_transfer_tests --multi_node --adv_strength 0.25 \
--grid_search --low_reward 1000 --high_reward 3500 --reward_range --adv_all_actions --concat_actions --extreme_domain_randomization" \
--start --stop --tmux --cluster-name=ev_pend_test7