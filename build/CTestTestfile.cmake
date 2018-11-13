# CMake generated Testfile for 
# Source directory: /root/okex/okcoin_bot
# Build directory: /root/okex/okcoin_bot/build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(test_json "jsonTests")
add_test(test_email "emailTests")
subdirs("lib/cpptoml-master-20170107")
subdirs("lib/spdlog-master-20170108")
subdirs("lib/gtest-1.8.0")
