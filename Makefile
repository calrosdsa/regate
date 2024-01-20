REDIS_TAG=3
R_BACKEND_VERSION=latest
R_ADMIN_VERSION=latest
build_rbackend: ## Visualización de redis
	@echo 'Imágenes de docker TAG=$(REDIS_TAG)'
	docker build -t jmiranda0521/r_backend:$(R_BACKEND_VERSION) ./r_backend/.
	docker push jmiranda0521/r_backend:$(R_BACKEND_VERSION)

build_regate_admin: ## Visualización de redis
	@echo 'Imágenes de docker TAG=$(REDIS_TAG)'
	docker build -t jmiranda0521/regate-admin:$(R_ADMIN_VERSION) ./regate-admin/.
	docker push jmiranda0521/regate-admin:$(R_ADMIN_VERSION)

# build_monitor: ## Construcción del monitor
# 	@echo 'Contenedores en ejecución'
# 	docker ps -a 
# 	$(MAKE) build_monitor_prometheus
# 	$(MAKE) build_monitor_grafana
# 	$(MAKE) build_monitor_redis
# 	$(MAKE) build_monitor_redis_exporter
# 	@echo 'Contenedores en ejecución'
# 	docker ps -a 
# build r_core: 
