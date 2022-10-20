#!/bin/bash

rm -rf report/*

tar -zxvf test.tar.gz -C report --strip 1
rm test.tar.gz
