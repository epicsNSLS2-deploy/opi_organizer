#!/bin/bash
if ! [[ ( -z $1 ) && ( -z $2 ) ]]; then
    echo Running convert_and_organize_ad.py
	py -3.6 ./organize_components/convert_and_organize_ad.py $1 $2
	echo Running convert_and_organize_epics.py
	py -3.6 ./organize_components/convert_and_organize_epics.py $1 $2
	echo Running update_references.py
	py -3.6 ./organize_components/update_references.py $1 $2
elif ! [ -z $1 ]; then
	echo Running convert_and_organize_ad.py
	py -3.6 ./organize_components/convert_and_organize_ad.py $1
	echo Running convert_and_organize_epics.py
	py -3.6 ./organize_components/convert_and_organize_epics.py $1
	echo Running update_references.py
	py -3.6 ./organize_components/update_references.py $1
else
    	echo Running convert_and_organize_ad.py
	py -3.6 ./organize_components/convert_and_organize_ad.py
	echo Running convert_and_organize_epics.py
	py -3.6 ./organize_components/convert_and_organize_epics.py
	echo Running update_references.py
	py -3.6 ./organize_components/update_references.py
fi