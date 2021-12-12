#!/bin/bash

my_input="/home/magnus/users.csv"

declare -a name
declare -a fname
declare -a lname
declare -a user
declare -a email
declare -a dept
declare -a employ

while IFS, read -r Name FirstName LastName Username Email Depatment EmployeeID;
do
	name+=("$Name")
	fname+=("$FirstName")
	lname+=("$LastName")
	uname+=("$Username")
	email+=("$Email")
	dept+=("$Depatment")
	employ+=("$EmployeeID")

done<my_input
for index in "${!user[@]}";
do
	useradd -g "${dept[$index]}" -d "/home/${user[$index]}" \
		-s /bin/bash \
		"${user[$index]}"
done
