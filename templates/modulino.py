#!/bin/env python3

import os
import argparse
import json

DEBUG = False

"""
from Brian Hunt's code (https://stackoverflow.com/a/13197763/215487)

# enter the directory like this:
with indir("~/Library"):
   # we are in ~/Library
   subprocess.call("ls")

"""
class indir:
    """Context manager for changing the current working directory"""
    def __init__(self, newPath):
        self.newPath = os.path.expanduser(newPath)

    def __enter__(self):
        self.savedPath = os.getcwd()
        os.chdir(self.newPath)

    def __exit__(self, etype, value, traceback):
        os.chdir(self.savedPath)


def main(args):
    config = args.config
    DEBUG = args.debug

    with open(config) as json_data:
        items_toplevel = json.load(json_data)
        if DEBUG:
            print(items_toplevel)

        for key_in_top in items_toplevel:
            if DEBUG:
                print("toplevel key:" + key_in_top)

            level_deeper_item = items_toplevel[key_in_top]["key_one_level_deeper"]

# command line interface (making this a modulino)
if __name__ == '__main__':
    parser = argparse.ArgumentParser(
                description='Program description here'
             )
    parser.add_argument(
        'config',
        type=str,
        help='Name of JSON config file MORE DETAILS HERE',
    )
    parser.add_argument(
        '--debug',
        dest='debug',
        action='store_true',
        default=False,
    )
    parser.add_argument(
        '--cores',
        type=str,
        default='24',
        help='Number of cores(threads) to use to process data',
    )
    parser.add_argument(
        '--mem',
        type=str,
        default='120',
        help='GB of memory to use to process data',
    )

    args = parser.parse_args()

    main(args)

