# -*- coding:UTF-8 -*-
import re

pwd = raw_input('>Please enter your password: ')
def valid_password(pwd):

	nums = len(pwd)
	p1 = re.compile(r'^[a-zA-Z](.+)')         #第一位是字母
	p2 = re.compile(r'[a-zA-Z0-9/_]+')      #只含数字、字母、下划线
	p3 = re.compile(r'(.+)[a-zA-Z0-9]$')    #只含数字、字母结尾
	if nums >= 2 and nums <= 10:
		if re.match(p1,pwd):
			if re.search(p2, pwd):
				if re.match(p3, pwd):
					print('Right')
				else:
					print('Invalid end word.')
			else:
				print('Invalid contains.')
		else:
			print('Invalid first word.')
	else:
		print('Invalid nums.')

valid_password(pwd)


