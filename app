# -*- coding:UTF-8 -*-
import re

pwd = raw_input('>Please enter your password: ')

def valid_password(pwd):
	p = re.compile(r'^[a-zA-Z]([0-9a-zA-Z/_]{0,8})[0-9a-zA-Z]$')
	if re.match(p, pwd):
		print('T')
	else:
		print('F')

valid_password(pwd)
