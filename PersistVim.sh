#!/bin/bash

me=`whoami`;
homeDir=`echo /home/${me}/`

mkdir ${homeDir}.vim_runtime;
mkdir ${homeDir}.vim_runtime/temp_dirs;
mkdir ${homeDir}.vim_runtime/undodir;
