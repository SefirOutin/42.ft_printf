# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: soutin <soutin@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/05/18 15:41:57 by soutin            #+#    #+#              #
#    Updated: 2023/05/22 15:04:03 by soutin           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC_DIR		:=		src
OBJ_DIR		:=		obj
LIBFT_DIR	=		libft

NAME		=		libftprintf.a
SRC			=		$(wildcard $(SRC_DIR)/*.c)
OBJ			=		$(SRC:$(SRC_DIR)/%.c=$(OBJ_DIR)/%.o)

CPPFLAGS	=		-I./include
CFLAGS		=		-Wall -Werror -Werror

$(NAME):			$(OBJ) 
						$(MAKE) -C $(LIBFT_DIR)
						@mv libft/libft.a $(NAME) 
						ar -rcs $(NAME) $(OBJ)

$(OBJ_DIR):
					mkdir -p $@

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c | $(OBJ_DIR)
	$(CC) $(CPPFLAGS) $(CFLAGS) -c $< -o $@

all:				$(NAME)

clean:
					rm -rf $(OBJ_DIR)
					$(MAKE) clean -C $(LIBFT_DIR)

fclean:				clean
						rm -f $(NAME) include/libft.a

re:					fclean all

.PHONY:				all clean fclean re
