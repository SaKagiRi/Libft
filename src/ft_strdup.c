/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strdup.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: knakto <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/09/03 22:21:58 by knakto            #+#    #+#             */
/*   Updated: 2024/09/03 23:02:14 by knakto           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strdup(const char *s1)
{
	size_t	i;
	char	*dest;

	i = 0;
	while (*(s1 + i))
		i++;
	dest = (char *)malloc(sizeof(char) * i + 1);
	if (dest == NULL)
		return (NULL);
	i = 0;
	while (*(s1 + i) && dest != NULL)
	{
		*(dest + i) = *(s1 + i);
		i++;
	}
	*(dest + i) = '\0';
	return (dest);
}
/*

char	*ft_strdup(const char *s1)
{
	size_t	i;
	char	*dest;

	i = 0;
	while (*(s1 + i) != '\0')
		i++;
	dest = (char *)malloc((sizeof(char) * i) + 1);
	i = 0;
	if (dest == NULL)
		return (NULL);
	while (dest != 0 && *(s1 + i) != '\0')
	{
		*(dest + i) = *(s1 + i);
		i++;
	}
	*(dest + i) = '\0';
	return (dest);
}
*/