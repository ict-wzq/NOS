TARGET = pstree

SRC_DIR = .
OBJ_DIR = .
SRC_SUBDIR += .
INC_DIR += .

CC = gcc 
CFLAGS = -Warning -Werror
INCLUDES += -I$(INC_DIR)
LD = $(CC)
LDFLAGS = 
LDLIBS = 

SRCS += ${foreach subdir, $(SRC_SUBDIR), ${wildcard $(SRC_DIR)/$(subdir)/*.c}}
OBJS += ${foreach src, $(notdir $(SRCS)), ${patsubst %.c, $(OBJ_DIR)/%.o, $(src)}}

all : $(TARGET)
	@echo "Builded target:" $^

$(TARGET) : $(OBJS)
	@echo "Linking" $@ "from" $^ "..."
	$(LD) -o $@ $^ $(LD_FLAGS) $(LD_LIBS)
	@echo "Link finished\n"

$(OBJS) : $(SRC_DIR)/*.c
	@mkdir -p $(@D)
	@echo "Compiling" $@ "from" $< "..."
	$(CC) -c -o $@ $< $(C_FLAGS) $(INCLUDES)
	@echo "Compile finished\n"	

.PHONY : clean 
clean : 
	@echo "Remove all executeable files"
	rm -f $(TARGET) $(OBJS)