apply:
	puppet apply  --modulepath=`puppet --configprint modulepath`:`pwd`/modules kaneara.pp