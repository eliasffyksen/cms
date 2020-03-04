
install:
	python3 setup.py install

db: install
	cmsDropDB
	cmsInitDB
	cmsAddAdmin tgpc -p tgpc
	cmsAdminWebServer

aws: install db
	cmsAdminWebServer

run: install
	cmsResourceService -a 1
