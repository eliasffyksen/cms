
install:
	python3 setup.py install

db:
	cmsDropDB
	cmsInitDB
	cmsAddAdmin tgpc -p tgpc

aws: install db
	cmsAdminWebServer

run: install
	cmsResourceService -a 1
