#!/usr/bin/env python
import json

import sh


evars = {'true_var': True, 'false_var': False, 'string_var': 'foo', 'int_var': 1}

print(
    sh.Command('ansible-playbook').bake([
        '-i', 'inventory/localhost',
        '-e', '{}'.format(json.dumps(evars)),
        'stupid-extra-vars.yml'])())
