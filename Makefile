NAME 		= libft.a
FILE		= ft_atoi.c ft_itoa.c ft_bzero.c ft_split.c ft_strlen.c ft_memset.c ft_memcpy.c ft_memchr.c ft_memcmp.c ft_strchr.c ft_calloc.c ft_strdup.c ft_substr.c \
		ft_isalnum.c ft_isalpha.c ft_isascii.c ft_isdigit.c ft_isprint.c ft_toupper.c ft_tolower.c ft_strlcpy.c ft_strlcat.c ft_strmapi.c ft_strncmp.c ft_strnstr.c  \
		ft_strrchr.c ft_memmove.c ft_strjoin.c ft_strtrim.c ft_striteri.c ft_putstr_fd.c ft_putnbr_fd.c ft_putchar_fd.c ft_putendl_fd.c
BONUS_FILE 	=  ft_lstmap_bonus.c ft_lstnew_bonus.c ft_lstsize_bonus.c \
		ft_lstiter_bonus.c ft_lstlast_bonus.c ft_lstclear_bonus.c ft_lstdelone_bonus.c ft_lstadd_back_bonus.c ft_lstadd_front_bonus.c 
#-----------------------------------------------------------------------------------------------------------------------------------------------------#
CC 		= cc
AR_AND_FLAGS	= ar -rcs
RM		= rm -rf
CFLAGS		= -Wall -Wextra -Werror
MKDIR		= mkdir -p
#-----------------------------------------------------------------------------------------------------------------------------------------------------#
src_dir		=src
obj_dir		=obj
inc		=include
#-----------------------------------------------------------------------------------------------------------------------------------------------------#
SRC		= $(addprefix $(src_dir)/, $(FILE))
OBJ		= $(addprefix $(obj_dir)/, $(FILE:%.c=%.o))
OBJB		= $(addprefix $(obj_dir)/, $(BONUS_FILE:%.c=%.o))
#-----------------------------------------------------------------------------------------------------------------------------------------------------#
all:header $(obj_dir) $(NAME) generate
$(obj_dir)/%.o:$(src_dir)/%.c
	@$(CC) $(CFLAGS) -I$(inc) -c $< -o $@
	@echo "\033[1;36mcompile file \033[1;37m$(<:.o=.c) \033[1;32m->> \033[1;37m$(<:.c=.o)\033[0m"
$(NAME):$(OBJ)
	@$(AR_AND_FLAGS) $@ $^
$(obj_dir):
	@$(MKDIR) $(obj_dir)
bonus:header $(obj_dir) $(OBJB) generate
	@$(AR_AND_FLAGS) $(NAME) $(OBJB)
gen:header $(obj_dir) $(NAME) bonus generate
clean:
	@$(RM) $(obj_dir) 
	@echo "\033[1;31mDelete Object file and Bonus_Object file.\033[0m"
fclean:clean
	@$(RM) $(NAME)
	@echo "\033[1;31mDelete Libft.a file.\033[0m"
re:fclean all
#-----------------------------------------------------------------------------------------------------------------------------------------------------#
.PHONY: all re clean fclean bonus header generate gen
#-----------------------------------------------------------------------------------------------------------------------------------------------------#
header :
	@echo "\033[2J\033[1;32m"
	@echo "    _________________________________________________________ "
	@echo "  /|                                                         |"
	@echo " |/|=>> ##       ##      <===========================>       |"
	@echo " |/|=>> ##     ##                                            |"
	@echo " |/|=>> ##   ##                       #        #             |"
	@echo " |/|=>> ## ##                         #     #######          |"
	@echo " |/|=>> ###                           #        #             |"
	@echo " |/|=>> ## ##        # #####   #####  #  ###   #   ######    |"
	@echo " |/|=>> ##   ##      ##    #  #    #  ##       #   #    #    |"
	@echo " |/|=>> ##     ##    #     #  #   ##  # ##     #   #    #    |"
	@echo " |/|=>> ##       ##  #     #   ### #  #   ##   #   ######  # |"
	@echo " |/|_________________________________________________________|"
	@echo " |/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/"
	@echo "  \"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\n\n\n\033[0m"
generate:
	@echo "\033[1;32m\n|-----------Generate file libft.a complete.-----------|\033[0m\n"
#-----------------------------------------------------------------------------------------------------------------------------------------------------#
