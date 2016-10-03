#!/bin/bash

gem uninstall remove_double_blank
bin/setup
echo '-----------------'
echo 'BEGIN TESTING gem'
rake
echo 'FINISHED TESTING gem'
echo '--------------------'
