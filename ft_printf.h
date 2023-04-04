/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cscelfo <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/01/16 15:18:06 by cscelfo           #+#    #+#             */
/*   Updated: 2023/02/06 17:01:52 by cscelfo          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H

# include <unistd.h>
# include <stdarg.h>
# include <stdlib.h>
# include <stdint.h>

int				ft_putchar(int c);
int				ft_putstr(const char *str);
int				ft_putnbr(int n);
unsigned int	ft_put_u_nbr(long int n);
int				ft_print_hex(unsigned int n, char format);
int				ft_print_ptr(uintptr_t ptr);
int				ft_printf(const char *str, ...);

#endif
