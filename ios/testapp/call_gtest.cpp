//
//  call_gtest.cpp
//  testapp
//
//  Created by Mac on 2019/01/11.
//  Copyright © 2019 Mac. All rights reserved.
//

#include "call_gtest.hpp"
#include "gtest/gtest.h"
#include <string>

void call_gtest(){
    int argc=2;
    char **argv = new char *[argc + 1];
    const char* arg="--gtest_output=xml:/googletest_result/result.xml";
    argv[1] = new char[strlen(arg)+1];
    strcpy(argv[1],arg);
    printf("init googletest");
    ::testing::InitGoogleTest( &argc, argv);
    printf(" run googletest");
    int ret = RUN_ALL_TESTS();
    printf(" end googletest");
}
