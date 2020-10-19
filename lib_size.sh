#!/bin/bash

LIB_PATH=.
FILE_NAME="liblwm2m_carrier.a"

SIZE_OUTPUT=$(size ${LIB_PATH}/${FILE_NAME})

echo "Size of ${FILE_NAME}"

readarray -d  " " -t SIZE_NUM_ARR <<< "${SIZE_OUTPUT}"

FLASH=${SIZE_NUM_ARR[20]}
RAM1=${SIZE_NUM_ARR[24]}
RAM2=${SIZE_NUM_ARR[27]}

let RAM_TOTAL=RAM1+RAM2

echo -e "\n**********"
echo "Size of ${FILE_NAME}"
echo -e "FLASH:\t${FLASH}"
echo -e "RAM:\t${RAM_TOTAL}"
echo -e "*********\n"
