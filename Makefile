NAME = libftprintf.a

ARCL = ar -crs

RM = rm -f

SRCS = ft_print_char.c ft_print_str.c ft_print_nbr.c ft_print_u_nbr.c ft_print_hex.c \
		ft_print_ptr.c ft_printf.c

CFLAGS = -Wall -Wextra -Werror -g

OBJ = $(SRCS:.c=.o)

GREY            = \033[0;30m
RED             = \033[0;31m
GREEN           = \033[0;32m
YELLOW          = \033[0;33m
BLUE            = \033[0;34m
FUCHSIA         = \033[0;35m
CYAN            = \033[0;36m
NC              = \033[0m

all: $(NAME)

$(NAME): $(OBJ)
	$(ARCL) $(NAME) $(OBJ)

clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(NAME)

re: fclean all

push:
	git add .
	@echo "$(RED)Adding all changes..."
	sleep 1.5
	@clear
	@echo "$(GREEN)All changes added$(NC)"
	@read -p "Enter a custom commit message (leave blank to use the default message): " message; \
	if [ -n "$$message" ]; then \
		git commit -m "$$message"; \
	else \
		git commit -m "$(shell date +'%H:%M %d-%h') update"; \
	fi
	@echo "$(YELLOW)Committing...and..."
	git push
	@echo "$(GREEN)PUSHA KEKKO!$(NC)"

norm:
	norminette *

.PHONY: all clean fclean re
.SILENT:
