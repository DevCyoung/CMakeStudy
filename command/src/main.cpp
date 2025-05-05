#include <iostream>
#include <bar.h>
#include "baz.h"

int main(int argc, char* argv[])
{
    (void)argc;
    (void)argv;

    //printf("Hello World!\n");
    std::cout << "RE: hello world!" << std::endl;

#ifdef NOMINMAX
    std::cout << "hello NOMINMAX" << std::endl;
#endif

    std::cout << "hello" << std::endl;

    std::cout << BAR_INCLUDE << std::endl;

    int ret = add(13, 25);

    std::cout << "ret " << ret << std::endl;

    return 0;
}