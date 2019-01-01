dc=docker-compose -f docker-compose.yml $(1)
dc-run=$(call dc, run --rm ruby $(1))

usage:
	@echo "Available targets:"
	@echo "  * build     - Builds image"
	@echo "  * configure - Runs configure"
	@echo "  * make      - Runs make"
	@echo "  * dev       - Opens an sh session in the container"
	@echo "  * tear-down - Removes all the containers and tears down the setup"
	@echo "  * stop      - Stops the server"

build:
	$(call dc, build)
configure:
	$(call dc-run, ./configure --enable-shared)
make:
	$(call dc-run, make)
dev:
	$(call dc-run, sh)
tear-down:
	$(call dc, down)
stop:
	$(call dc, stop)
