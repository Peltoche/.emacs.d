/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ppeltier <ppeltier@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/11 14:10:15 by ppeltier          #+#    #+#             */
/*   Updated: 2014/11/11 14:26:49 by ppeltier         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

int		help(void)
{
	printf("usage: gene-make source_directory\n")
	return (-1);
}

int		main(int ac, char **av)
{
	int	inc = 0;
	int	fd;

	if (ac < 2 || ac > 3)
		return (help());
	while (++inc < ac - 1)
		if ((fd = open(av[inc], ))
}
