#include <stdio.h>
#include <stdlib.h>

int main()
{
    system("start \"\" \"http://localhost:8080\"");
    system("php -S localhost:8080");
    return EXIT_SUCCESS;
}
