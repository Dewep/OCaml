##
## Makefile for ocaml_bistro in /perso/workspace/rendu/ocaml_bistro
##
## Made by Maigret Aurelien
## Login maigre_a <maigre_a@epitech.eu>
##
## Started on  Mon Mar 17 15:14:20 2014 Maigret Aurelien
## Last update Mon Mar 17 15:14:20 2014 Maigret Aurelien
##


# Ou alors faire un "ocamlbuild compile_expr.native" pour compiler en natif compile_expr.ml
# Et "ocamlbuild compile_expr.byte" pour le compiler en byte


OCAMLC		= ocamlc

OCAMLOPT	= ocamlopt

RM			= rm -f

OCAMLFLAGS	= -w Aelz -warn-error A

NAME		= argv

NAMEBYTE	= $(NAME:%=%_byte)

SOURCE		= argv.ml

INTERFACE	=

all:		$(NAME)

byte:		$(NAMEBYTE)

$(NAME):
			$(OCAMLOPT) $(OCAMLFLAGS) $(INTERFACE)
			$(OCAMLOPT) $(OCAMLFLAGS) -o $(NAME) $(SOURCE)

$(NAMEBYTE):
			$(OCAMLC) $(OCAMLFLAGS) $(INTERFACE)
			$(OCAMLC) $(OCAMLFLAGS) -o $(NAMEBYTE) $(SOURCE)

clean:
			$(RM) *.o *.cmi *.cmx *~

fclean:		clean
			$(RM) $(NAME) $(NAMEBYTE)

re:			fclean all

.PHONY:		all clean fclean re
