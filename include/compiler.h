
#ifndef __COMPILER_H__
#define __COMPILER_H__

#include "object.h"
#include "vm.h"

bool compile(const char* source, Chunk* chunk);

#endif
