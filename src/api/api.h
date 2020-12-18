#ifndef API_H
#define API_H

#include <lua5.2/lua.h>
#include <lua5.2/lauxlib.h>
#include <lua5.2/lualib.h>

#define API_TYPE_FONT "Font"

void api_load_libs(lua_State *L);

#endif
