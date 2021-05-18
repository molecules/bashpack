#!/bin/env python3

import os
import argparse
import json

DEBUG = False

def spurt(x,y):
    with open(x,"w") as out_file:
        out_file.write(y)

def slurp(x):
    with open('x.txt') as x: f = x.read()
    return f

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

