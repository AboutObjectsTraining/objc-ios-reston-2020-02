#include <stdio.h>

#include "ANSICBasics.h"
#include "Pointers.h"
#include "Person.h"

int main(int argc, const char *argv[])
{
    struct Person sally = {
        .firstName = "Sally",
        .lastName = "Jones",
        .age = 27
    };
    
    printf("name: %s %s\n", sally.firstName, sally.lastName);
    
//    RunANSICBasics01();
//    RunANSICBasics02();
//
//    RunPointers01();
//    RunPointers02();
//    RunPointers03();
//    RunPointers04();
//    RunPointers05();

    return 0;
}

