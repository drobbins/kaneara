apply: modules
	puppet apply  --modulepath=`puppet --configprint modulepath`:`pwd`/modules kaneara.pp

modules:
	puppet apply modules.pp