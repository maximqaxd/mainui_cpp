TARGET = libmenu.a
DEFINES = -D_KOS_ -D_SH4_  -Dstricmp=strcasecmp -Dstrnicmp=strncasecmp -D_snprintf=snprintf  -D_snprintf=snprintf -DMAINUI_USE_CUSTOM_FONT_RENDER -DNDEBUG -DSTDINT_H=<stdint.h>  
INCLUDES = -I. -I./controls -I./font -I./menus -I./model -I./miniutl -I./sdk_includes/common -I./sdk_includes/engine -I./sdk_includes/pm_shared -I./sdk_includes/public  -I../../public
KOS_CFLAGS +=  $(INCLUDES) $(DEFINES) -Os -fomit-frame-pointer -ffunction-sections -fdata-sections -fno-strict-aliasing -mrelax -fno-asynchronous-unwind-tables -fno-stack-protector
KOS_CPPFLAGS += $(INCLUDES) $(DEFINES) -fno-exceptions -std=gnu++11 -fpermissive -MMD -MP  $(CFLAGS)
OBJS = BaseMenu.o \
	Btns.o \
	CFGScript.o \
	EngineCallback.o \
	EventSystem.o \
	MenuStrings.o \
	Scissor.o \
	udll_int.o \
	utflib.o \
	Utils.o \
	WindowSystem.o \
	miniutl/bitstring.o \
	miniutl/strtools.o \
	miniutl/utlbuffer.o \
	miniutl/utlmemory.o \
	miniutl/utlstring.o \
	miniutl/generichash.o \
	menus/dynamic/ScriptMenu.o \
	menus/AdvancedControls.o \
	menus/Audio.o \
	menus/Configuration.o \
	menus/ConnectionProgress.o \
	menus/ConnectionWarning.o \
	menus/Controls.o \
	menus/CreateGame.o \
	menus/Credits.o \
	menus/CustomGame.o \
	menus/FileDialog.o \
	menus/GameOptions.o \
	menus/Gamepad.o \
	menus/InputDevices.o \
	menus/LoadGame.o \
	menus/Main.o \
	menus/Multiplayer.o \
	menus/NewGame.o \
	menus/PlayerIntroduceDialog.o \
	menus/PlayerSetup.o \
	menus/SaveLoad.o \
	menus/ServerBrowser.o \
	menus/ServerInfo.o \
	menus/Touch.o \
	menus/TouchButtons.o \
	menus/TouchEdit.o \
	menus/TouchOptions.o \
	menus/Video.o \
	menus/VideoModes.o \
	menus/VideoOptions.o \
	menus/Zoo.o \
	font/BaseFontBackend.o \
	font/BitmapFont.o \
	font/FontManager.o \
	font/WinAPIFont.o \
	controls/Action.o \
	controls/AnimatedBanner.o \
	controls/BackgroundBitmap.o \
	controls/BaseClientWindow.o \
	controls/BaseItem.o \
	controls/BaseWindow.o \
	controls/Bitmap.o \
	controls/CheckBox.o \
	controls/Editable.o \
	controls/Field.o \
	controls/Framework.o \
	controls/ItemsHolder.o \
	controls/MessageBox.o \
	controls/MovieBanner.o \
	controls/DropDown.o \
	controls/PicButton.o \
	controls/PlayerModelView.o \
	controls/ProgressBar.o \
	controls/ScrollView.o \
	controls/Slider.o \
	controls/SpinControl.o \
	controls/Switch.o \
	controls/Table.o \
	controls/TabView.o \
	controls/YesNoMessageBox.o \
	link_helper.o 
	
include ${KOS_PORTS}/scripts/lib.mk