/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: soutin <soutin@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/05/18 15:47:22 by soutin            #+#    #+#             */
/*   Updated: 2023/05/22 13:59:56 by soutin           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H

# include "libft.h"
# include <stdarg.h>

int			ft_printf(const char *str, ...);
size_t		pf_putchar(int c);
size_t		pf_putstr(char *s);
void		pf_putnbr(int nb, size_t *len);
void		pf_convert_base(unsigned long nb, char index, size_t *len);

#endif