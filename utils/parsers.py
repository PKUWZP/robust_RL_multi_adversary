import argparse
import os


def init_parser():
    return argparse.ArgumentParser('Parse some arguments bruv')


def ray_parser(parser):
    parser.add_argument('--exp_title', type=str, default='test',
                        help='Informative experiment title to help distinguish results')
    parser.add_argument('--use_s3', action='store_true', help='If true, upload results to s3')
    parser.add_argument('--num_cpus', type=int, default=1, help='Number of cpus to run experiment with')
    parser.add_argument('--multi_node', action='store_true', help='Set to true if this will '
                                                                  'be run in cluster mode')
    parser.add_argument('--num_iters', type=int, default=350)
    parser.add_argument('--checkpoint_freq', type=int, default=1)
    parser.add_argument('--num_samples', type=int, default=1)

    # TODO: Fix this visualization code
    parser.add_argument('--render', type=str, default=False)
    return parser


def env_parser(parser):
    script_path = os.path.dirname(os.path.abspath(__file__))
    parser.add_argument('--env_params', type=str,
                        default=os.path.abspath(os.path.join(script_path, '../configs/env_params.config')))
    parser.add_argument('--policy_params', type=str,
                        default=os.path.abspath(os.path.join(script_path, '../configs/policy_params.config')))
    parser.add_argument('--policy', type=str, default='cadrl')
    parser.add_argument('--train_config', type=str, default=os.path.join(script_path, '../configs/train.config'))
    parser.add_argument("--show_images", action="store_true", default=False, help="Whether to display the observations")
    parser.add_argument('--train_on_images', action='store_true', default=False, help='Whether to train on images')
    parser.add_argument('--change_colors_mode', type=str, default='no_change',
                        help='If mode `every_step`, the colors will be swapped '
                             'at each step. If mode `first_step` the colors will'
                             'be swapped only once')
    parser.add_argument('--friction', action='store_true', default=False,
                        help='If true, all the commands are slightly less than expected and the humans move slower')
    return parser


def replay_parser(parser):
    parser.add_argument(
        'result_dir', type=str, help='Directory containing results')
    parser.add_argument('checkpoint_num', type=str, help='Checkpoint number.')
    parser.add_argument('--num_cpus', type=int, default=1, help='Number of cpus to run experiment with')
    parser.add_argument('--video_file', type=str, default="rollout.mp4")
    parser.add_argument('--show_images', action="store_true")
    parser.add_argument('--num_rollouts', type=int, default=1)
    parser.add_argument('--traj', type=str, default='no_show',
                        help='What type of video we want to generate. Options are [human, traj, video]')
    return parser