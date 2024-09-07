/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstclear_bonus.c                                :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: knakto <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/09/05 14:05:58 by knakto            #+#    #+#             */
/*   Updated: 2024/09/07 23:16:35 by knakto           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	ft_lstclear(t_list **lst, void (*del)(void *))
{
	t_list	*tmp;

	if (!*lst || del)
		return ;
	while (*lst)
	{
		(del)((*lst)->content);
		tmp = *lst;
		*lst = (*lst)->next;
		free(tmp);
	}
	*lst = NULL;
}
