
#ifndef __COMPILER_H__
#define __COMPILER_H__

#include "object.h"
#include "vm.h"

ObjFunction* compile(const char* source);

#endif
