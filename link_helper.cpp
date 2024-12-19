#include "extdll_menu.h"

extern "C"
{

int GetMenuAPI(UI_FUNCTIONS *pFunctionTable, ui_enginefuncs_t* pEngfuncsFromEngine, ui_globalvars_t *pGlobals);
int GetExtAPI( int version, UI_EXTENDED_FUNCTIONS *pFunctionTable, ui_extendedfuncs_t *pEngfuncsFromEngine );

struct {const char *name;void *func;} lib_menu_exports[] = {
{ "GetMenuAPI", &GetMenuAPI },
{ "GetExtAPI", &GetExtAPI },
{ 0, 0 }
};
}