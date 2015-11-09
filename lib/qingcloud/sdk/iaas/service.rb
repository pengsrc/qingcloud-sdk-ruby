module QingCloud
    module SDK
        module IaaS

            class Service < Foundation

                def check_api_keys
                    begin
                        eval(build_fetch_match)
                    rescue Error::APIError
                        false
                        self.response['ret_code'] == 1200 ? false : true
                    end
                end

                # Instance

                def describe_instances(
                    instances_N: [],
                    image_id_N: [],
                    instance_type_N: [],
                    status_N: [],
                    search_word: nil,
                    verbose: nil,
                    offset: nil,
                    limit: nil,
                    zone:)eval(build_fetch_match)
                end

                def run_instances(
                    image_id:,
                    instance_type: nil,
                    cpu: nil,
                    memory: nil,
                    count: 1,
                    instance_name: nil,
                    login_mode:,
                    login_keypair: nil,
                    login_passwd: nil,
                    vxnets_N: [],
                    security_group: nil,
                    volumes_N: [],
                    need_newsid: nil,
                    need_userdata: nil,
                    userdata_type: nil,
                    userdata_value: nil,
                    userdata_path: nil,
                    zone:)eval(build_fetch_match)
                end

                def terminate_instances(
                    instances_N:,
                    zone:)eval(build_fetch_match)
                end

                def start_instances(
                    instances_N:,
                    zone:)eval(build_fetch_match)
                end

                def stop_instances(
                    instances_N:,
                    force: nil,
                    zone:)eval(build_fetch_match)
                end

                def restart_instances(
                    instances_N:,
                    zone:)eval(build_fetch_match)
                end

                def reset_instances(
                    instances_N:,
                    login_mode:,
                    login_keypair: nil,
                    login_passwd: nil,
                    need_newsid: nil,
                    zone:)eval(build_fetch_match)
                end

                def resize_instances(
                    instances_N:,
                    instance_type: nil,
                    cpu: nil,
                    memory: nil,
                    zone: nil)eval(build_fetch_match)
                end

                def modify_instance_attributes(
                    instance:,
                    instance_name: nil,
                    description: nil,
                    zone:)eval(build_fetch_match)
                end

                # Volume

                def describe_volumes(
                    volumes_N: [],
                    volume_type: nil,
                    status_N: [],
                    search_word: nil,
                    verbose: nil,
                    offset: nil,
                    limit: nil,
                    zone:)eval(build_fetch_match)
                end

                def create_volumes(
                    size:,
                    volume_name: nil,
                    volume_type: nil,
                    count: nil,
                    zone:)eval(build_fetch_match)
                end

                def delete_volumes(
                    volumes_N:,
                    zone:)eval(build_fetch_match)
                end

                def attach_volumes(
                    volumes_N:,
                    instance:,
                    zone:)eval(build_fetch_match)
                end

                def detach_volumes(
                    volumes_N:,
                    instance:,
                    zone:)eval(build_fetch_match)
                end

                def resize_volumes(
                    volumes_N:,
                    size:,
                    zone:)eval(build_fetch_match)
                end

                def modify_volume_attributes(
                    volume:,
                    volume_name: nil,
                    description: nil,
                    zone:)eval(build_fetch_match)
                end

                # VXNet

                def describe_vxnets(
                    vxnets_N: [],
                    vxnet_type: nil,
                    search_word: nil,
                    verbose: nil,
                    offset: nil,
                    limit: nil,
                    zone:)eval(build_fetch_match)
                end

                def create_vxnets(
                    vxnet_name: nil,
                    vxnet_type:,
                    count: nil,
                    zone:)eval(build_fetch_match)
                end

                def delete_vxnets(
                    vxnets_N:,
                    zone:)eval(build_fetch_match)
                end

                def join_vxnets(
                    vxnet:,
                    instances_N:,
                    zone:)eval(build_fetch_match)
                end

                def leave_vxnets(
                    vxnet:,
                    instances_N:,
                    zone:)eval(build_fetch_match)
                end

                def modify_vxnet_attributes(
                    vxnet:,
                    vxnet_name: nil,
                    description: nil,
                    zone:)eval(build_fetch_match)
                end

                def describe_vxnet_instances(
                    vxnet:,
                    instances_N: [],
                    instance_type: nil,
                    status: nil,
                    image: nil,
                    offset: nil,
                    limit: nil,
                    zone:)eval(build_fetch_match)
                end

                # Router

                def describe_routers(
                    routers_N: [],
                    status_N: [],
                    search_word: nil,
                    verbose: nil,
                    offset: nil,
                    limit: nil,
                    zone:)eval(build_fetch_match)
                end

                def create_routers(
                    router_name: nil,
                    router_type: nil,
                    count: nil,
                    security_group: nil,
                    zone:)eval(build_fetch_match)
                end

                def delete_routers(
                    routers_N:,
                    zone:)eval(build_fetch_match)
                end

                def update_routers(
                    routers_N:,
                    zone:)eval(build_fetch_match)
                end

                def power_off_routers(
                    routers_N:,
                    zone:)eval(build_fetch_match)
                end

                def power_on_routers(
                    routers_N:,
                    zone:)eval(build_fetch_match)
                end

                def join_routers(
                    vxnet:,
                    router:,
                    ip_network:,
                    features: nil,
                    zone:)eval(build_fetch_match)
                end

                def leave_routers(
                    vxnets_N:,
                    router:,
                    zone:)eval(build_fetch_match)
                end

                def modify_router_attributes(
                    router:,
                    eip: nil,
                    security_group: nil,
                    router_name: nil,
                    description: nil,
                    zone:)eval(build_fetch_match)
                end

                def describe_router_statics(
                    router_statics_N: [],
                    router: nil,
                    static_type: nil,
                    verbose: nil,
                    offset: nil,
                    limit: nil,
                    zone:)eval(build_fetch_match)
                end

                def add_router_statics(
                    router:,
                    statics_N_router_static_name: [],
                    statics_N_static_type:,
                    statics_N_val1:,
                    statics_N_val2: nil,
                    statics_N_val3: nil,
                    statics_N_val4: nil,
                    zone:)eval(build_fetch_match)
                end

                def modify_router_static_attributes(
                    router_static:,
                    router_static_name: nil,
                    val1: nil,
                    val2: nil,
                    val3: nil,
                    val4: nil,
                    val5: nil,
                    val6: nil,
                    zone:)eval(build_fetch_match)
                end

                def delete_router_statics(
                    router_statics_N:,
                    zone:)eval(build_fetch_match)
                end

                def describe_router_vxnets(
                    router: nil,
                    vxnet: nil,
                    verbose: nil,
                    offset: nil,
                    limit: nil,
                    zone:)eval(build_fetch_match)
                end

                # Eip

                def describe_eips(
                    eips_N: [],
                    instance_id: nil,
                    status_N: [],
                    search_word: nil,
                    offset: nil,
                    limit: nil,
                    zone:)eval(build_fetch_match)
                end

                def allocate_eips(
                    bandwidth:,
                    billing_mode: nil,
                    eip_name: nil,
                    count: nil,
                    need_icp: nil,
                    zone:)eval(build_fetch_match)
                end

                def release_eips(
                    eips_N: [],
                    zone:)eval(build_fetch_match)
                end

                def associate_eips(
                    eip:,
                    instance:,
                    zone:)eval(build_fetch_match)
                end

                def dssociate_eips(
                    eips_N:,
                    zone:)eval(build_fetch_match)
                end

                def change_eips_bandwidth(
                    eips_N:,
                    bandwidth:,
                    zone:)eval(build_fetch_match)
                end

                def change_eips_billing_mode(
                    eips_N:,
                    billing_mode:,
                    zone:)eval(build_fetch_match)
                end

                def modify_eip_attributes(
                    eips:,
                    eip_name: nil,
                    description: nil,
                    zone:)eval(build_fetch_match)
                end

                # SecurityGroup

                def describe_security_groups(
                    security_groups_N: [],
                    search_word: nil,
                    verbose: nil,
                    offset: nil,
                    limit: nil,
                    zone:)eval(build_fetch_match)
                end

                def create_security_group(
                    security_group_name: nil,
                    zone:)eval(build_fetch_match)
                end

                def delete_security_groups(
                    security_groups_N:,
                    zone:)eval(build_fetch_match)
                end

                def apply_security_group(
                    security_group:,
                    instances_N: [],
                    zone:)eval(build_fetch_match)
                end

                def modify_security_group_attributes(
                    security_group:,
                    security_group_name: nil,
                    description: nil,
                    zone:)eval(build_fetch_match)
                end

                def describe_security_group_rules(
                    security_group: nil,
                    security_group_rules_N: [],
                    direction: nil,
                    offset: nil,
                    limit: nil,
                    zone:)eval(build_fetch_match)
                end

                def add_security_group_rules(
                    security_group:,
                    rules_N_protocol:,
                    rules_N_priority:,
                    rules_N_security_group_rule_name: [],
                    rules_N_action: [],
                    rules_N_direction: [],
                    rules_N_val1: [],
                    rules_N_val2: [],
                    rules_N_val3: [],
                    zone:)eval(build_fetch_match)
                end

                def delete_security_group_rules(
                    security_group_rules_N:,
                    zone:)eval(build_fetch_match)
                end

                def modify_security_group_rule_attributes(
                    security_group_rule:,
                    security_group_rule_name: nil,
                    priority:,
                    zone:)eval(build_fetch_match)
                end

                # KeyPair

                def describe_key_pairs(
                    keypairs_N: [],
                    instance_id: nil,
                    encrypt_method: nil,
                    search_word: nil,
                    verbose: nil,
                    offset: nil,
                    limit: nil,
                    zone:)eval(build_fetch_match)
                end

                def create_key_pairs(
                    keypair_name: nil,
                    mode: nil,
                    encrypt_method: nil,
                    public_key: nil,
                    zone:)eval(build_fetch_match)
                end

                def delete_key_pairs(
                    keypairs_N:,
                    zone:)eval(build_fetch_match)
                end

                def attach_key_pairs(
                    keypairs_N:,
                    instances_N:,
                    zone:)eval(build_fetch_match)
                end

                def detach_key_pairs(
                    keypairs_N:,
                    instances_N:,
                    zone:)eval(build_fetch_match)
                end

                def modify_key_pair_attributes(
                    keypair:,
                    keypair_name: nil,
                    description: nil,
                    zone:)eval(build_fetch_match)
                end

                # Image

                def describe_images(
                    images_N: [],
                    processor_type: nil,
                    os_family: nil,
                    visibility: nil,
                    provider: nil,
                    status_N: [],
                    search_word: nil,
                    verbose: nil,
                    offset: nil,
                    limit: nil,
                    zone:)eval(build_fetch_match)
                end

                def capture_instance(
                    instance:,
                    image_name: nil,
                    zone:)eval(build_fetch_match)
                end

                def delete_images(
                    images_N:,
                    zone:)eval(build_fetch_match)
                end

                def modify_image_attributes(
                    image:,
                    image_name: nil,
                    description: nil,
                    zone:)eval(build_fetch_match)
                end

                # LoadBalancer

                def create_load_balancer(
                    eips_N: [],
                    vxnet: nil,
                    private_ip: nil,
                    loadbalancer_type: nil,
                    loadbalancer_name: nil,
                    security_group: nil,
                    zone:)eval(build_fetch_match)
                end

                def describe_load_balancers(
                    loadbalancers_N: [],
                    status_N: [],
                    search_word: nil,
                    verbose: nil,
                    offset: nil,
                    limit: nil,
                    zone:)eval(build_fetch_match)
                end

                def delete_load_balancers(
                    loadbalancers_N:,
                    zone:)eval(build_fetch_match)
                end

                def modify_load_balancer_attributes(
                    loadbalancer:,
                    loadbalancer_name: nil,
                    security_group: nil,
                    description: nil,
                    private_ip: nil,
                    zone:)eval(build_fetch_match)
                end

                def start_load_balancers(
                    loadbalancers_N:,
                    zone:)eval(build_fetch_match)
                end

                def stop_load_balancers(
                    loadbalancers_N:,
                    zone:)eval(build_fetch_match)
                end

                def update_load_balancers(
                    loadbalancers_N:,
                    zone:)eval(build_fetch_match)
                end

                def resize_load_balancers(
                    loadbalancers_N:,
                    loadbalancer_type:,
                    zone:)eval(build_fetch_match)
                end

                def associate_eips_to_load_balancer(
                    eips_N:,
                    loadbalancer:,
                    zone:)eval(build_fetch_match)
                end

                def dissociate_eips_from_load_balancer(
                    eips_N:,
                    loadbalancer:,
                    zone:)eval(build_fetch_match)
                end

                def add_load_balancer_listeners(
                    loadbalancer:,
                    listeners_N_listener_port:,
                    listeners_N_listener_protocol:,
                    listeners_N_backend_protocol:,
                    listeners_N_loadbalancer_listener_name: [],
                    listeners_N_balance_mode: [],
                    listeners_N_session_sticky: [],
                    listeners_N_forwardfor: [],
                    listeners_N_healthy_check_method: [],
                    listeners_N_healthy_check_option: [],
                    listeners_N_listener_option: [],
                    zone:)eval(build_fetch_match)
                end

                def add_load_balancer_listeners(
                    loadbalancer_listeners_N: nil,
                    loadbalancer: nil,
                    verbose: nil,
                    offset: nil,
                    limit: nil,
                    zone:)eval(build_fetch_match)
                end

                def delete_load_balancer_listeners(
                    loadbalancer_listeners_N:,
                    zone:)eval(build_fetch_match)
                end

                def modify_load_balancer_listener_attributes(
                    loadbalancer_listener:,
                    loadbalancer_listener_name: nil,
                    balance_mode: nil,
                    session_sticky: nil,
                    forwardfor: nil,
                    healthy_check_method: nil,
                    healthy_check_option: nil,
                    listeners_N_listener_option: [],
                    zone:)eval(build_fetch_match)
                end

                def add_load_balancer_backends(
                    loadbalancer_listener:,
                    backends_N_resource_id:,
                    backends_N_loadbalancer_backend_name: [],
                    backends_N_port:,
                    backends_N_weight:,
                    listeners_N_listener_option: [],
                    zone:)eval(build_fetch_match)
                end

                def describe_load_balancer_backends(
                    loadbalancer_backends_N: [],
                    loadbalancer_listener: nil,
                    loadbalancer: nil,
                    verbose: nil,
                    offset: nil,
                    limit: nil,
                    zone:)eval(build_fetch_match)
                end

                def delete_load_balancer_backends(
                    loadbalancer_backends_N: [],
                    zone:)eval(build_fetch_match)
                end

                def modify_load_balancer_backend_attributes(
                    loadbalancer_backend:,
                    port: nil,
                    weight: nil,
                    disabled: nil,
                    loadbalancer_policy_id: nil,
                    zone:)eval(build_fetch_match)
                end

                # Monitor

                def get_monitor(
                    resource:,
                    meters_N:,
                    step:,
                    start_time:,
                    end_time:,
                    zone:)eval(build_fetch_match)
                end

                def get_load_balancer_monitor(
                    resource:,
                    meters_N:,
                    step:,
                    start_time:,
                    end_time:,
                    zone:)eval(build_fetch_match)
                end

                def get_rdb_monitor(
                    resource:,
                    meters_N:,
                    step:,
                    start_time:,
                    end_time:,
                    zone:)eval(build_fetch 'GetRDBMonitor')
                end

                # Snapshot

                def describe_snapshots(
                    snapshots_N: [],
                    resource_id: nil,
                    snapshot_type: nil,
                    status_N: [],
                    search_word: nil,
                    verbose: nil,
                    offset: nil,
                    limit: nil,
                    zone:)eval(build_fetch_match)
                end

                def create_snapshots(
                    resources_N:,
                    snapshot_name: nil,
                    is_full: nil,
                    zone:)eval(build_fetch_match)
                end

                def delete_snapshots(
                    snapshots_N:,
                    zone:)eval(build_fetch_match)
                end

                def apply_snapshots(
                    snapshots_N:,
                    zone:)eval(build_fetch_match)
                end

                def modify_snapshot_attributes(
                    snapshot:,
                    snapshot_name: nil,
                    description: nil,
                    zone:)eval(build_fetch_match)
                end

                def capture_instance_from_snapshot(
                    snapshot:,
                    image_name: nil,
                    zone:)eval(build_fetch_match)
                end

                def create_volume_from_snapshot(
                    snapshot:,
                    volume_name: nil,
                    zone:)eval(build_fetch_match)
                end

                # UserData

                def upload_user_data_attachment(
                    attachment_content:,
                    attachment_name: nil,
                    zone:)eval(build_fetch_match)
                end

                # Job

                def describe_jobs(
                    jobs_N: [],
                    status_N: [],
                    job_action: nil,
                    verbose: nil,
                    offset: nil,
                    limit: nil,
                    zone:) eval(build_fetch_match)
                end

                # Zone

                def describe_zones(
                    zones_N: [],
                    status_N: []) eval(build_fetch_match)
                end

                # RemoteDataBase

                def create_rdb(
                    vxnet:,
                    rdb_engine: nil,
                    engine_version: nil,
                    rdb_username:,
                    rdb_password:,
                    rdb_type:,
                    storage_size:,
                    rdb_name: nil,
                    description: nil,
                    auto_backup_time: nil,
                    zone:)eval(build_fetch 'CreateRDB')
                end

                def describe_rdbs(
                    rdbs_N: [],
                    status_N: [],
                    rdb_name: nil,
                    verbose: nil,
                    offset: nil,
                    limit: nil,
                    zone:)eval(build_fetch 'DescribeRDBs')
                end

                def delete_rdbs(
                    rdbs_N:,
                    zone:)eval(build_fetch 'DeleteRDBs')
                end

                def start_rdbs(
                    rdbs_N:,
                    zone:)eval(build_fetch 'StartRDBs')
                end

                def stop_rdbs(
                    rdbs_N:,
                    zone:)eval(build_fetch 'StopRDBs')
                end

                def resize_rdbs(
                    rdbs_N:,
                    rdb_type: nil,
                    storage_size: nil,
                    zone:)eval(build_fetch 'ResizeRDBs')
                end

                def rdbs_leave_vxnet(
                    rdbs_N:,
                    vxnet:,
                    zone:)eval(build_fetch 'RDBsLeaveVxnet')
                end

                def rdbs_join_vxnet(
                    rdbs_N:,
                    vxnet:,
                    zone:)eval(build_fetch 'RDBsJoinVxnet')
                end

                def create_rdb_from_snapshot(
                    vxnet:,
                    rdb_type:,
                    rdb_name: nil,
                    description: nil,
                    auto_backup_time: nil,
                    zone:)eval(build_fetch 'CreateRDBFromSnapshot')
                end

                # Mongo

                def describe_mongo_nodes(
                    mongo:,
                    offset: nil,
                    limit: nil,
                    zone:)eval(build_fetch 'DescribeMongoNodes')
                end

                def describe_mongo_parameters(
                    mongo:,
                    offset: nil,
                    limit: nil,
                    zone:)eval(build_fetch 'DescribeMongoParameters')
                end

                def resize_mongos(
                    mongos_N:,
                    mongo_type: nil,
                    storage_size: nil,
                    zone:)eval(build_fetch 'ResizeMongos')
                end

                def create_mongo(
                    vxnet:,
                    mongo_version: nil,
                    mongo_type:,
                    storage_size:,
                    mongo_name: nil,
                    description: nil,
                    auto_backup_time: nil,
                    private_ips: nil,
                    zone:)eval(build_fetch 'CreateMongo')
                end

                def stop_mongos(
                    mongos_N:,
                    zone:)eval(build_fetch 'StopMongos')
                end

                def start_mongos(
                    mongos_N:,
                    zone:)eval(build_fetch 'StartMongos')
                end

                def describe_mongos(
                    mongos_N: [],
                    status_N: [],
                    mongo_name: nil,
                    tags_N: [],
                    verbose: nil,
                    offset: nil,
                    limit: nil,
                    zone:)eval(build_fetch 'DescribeMongos')
                end

                def delete_mongos(
                    mongos_N:,
                    zone:)eval(build_fetch 'DeleteMongos')
                end

                def create_mongo_from_snapshot(
                    vxnet:,
                    mongo_type:,
                    mongo_name: nil,
                    description: nil,
                    auto_backup_time: nil,
                    zone:)eval(build_fetch 'CreateMongoFromSnapshot')
                end

                def change_mongo_vxnet(
                    mongo:,
                    vxnet:,
                    private_ips: nil,
                    zone:)eval(build_fetch 'ChangeMongoVxnet')
                end

                def add_mongo_instances(
                    mongo:,
                    node_count: nil,
                    private_ips: nil,
                    zone:)eval(build_fetch 'AddMongoInstances')
                end

                def remove_mongo_instances(
                    mongo:,
                    mongo_instances:,
                    zone:)eval(build_fetch 'RemoveMongoInstances')
                end

                def modify_mongo_attributes(
                    mongo:,
                    mongo_name: nil,
                    description: nil,
                    auto_backup_time: nil,
                    zone:)eval(build_fetch 'ModifyMongoAttributes')
                end

                def modify_mongo_instances(
                    mongo:,
                    private_ips: nil,
                    zone:)eval(build_fetch 'ModifyMongoInstances')
                end

                def get_mongo_monitor(
                    resource:,
                    meters_N:,
                    step:,
                    start_time:,
                    end_time:,
                    zone:)eval(build_fetch 'GetMongoMonitor')
                end

                # Cache

                def describe_caches(
                    caches_N: [],
                    status_N: [],
                    search_word: nil,
                    tags_N: [],
                    verbose: nil,
                    offset: nil,
                    limit: nil,
                    zone:)eval(build_fetch 'DescribeCaches')
                end

                def create_cache(
                    vxnet:,
                    cache_size:,
                    cache_type:,
                    node_count: nil,
                    cache_name: nil,
                    cache_parameter_group: nil,
                    private_ips_N_cache_role: [],
                    private_ips_N_private_ips: [],
                    zone:)eval(build_fetch 'CreateCache')
                end

                def stop_caches(
                    caches_N:,
                    zone:)eval(build_fetch 'StopCaches')
                end

                def start_caches(
                    caches_N:,
                    zone:)eval(build_fetch 'StartCaches')
                end

                def restart_caches(
                    caches_N:,
                    zone:)eval(build_fetch 'RestartCaches')
                end

                def delete_caches(
                    caches_N:,
                    zone:)eval(build_fetch 'DeleteCaches')
                end

                def resize_caches(
                    caches_N:,
                    cache_size:,
                    zone:)eval(build_fetch 'ResizeCaches')
                end

                def update_cache(
                    cache:,
                    private_ips_N_cache_node_id: [],
                    private_ips_N_private_ip: [],
                    zone:)eval(build_fetch 'UpdateCache')
                end

                def change_cache_vxnet(
                    cache:,
                    vxnet:,
                    private_ips_N_cache_node_id: [],
                    private_ips_N_private_ip: [],
                    zone:)eval(build_fetch 'ChangeCacheVxnet')
                end

                def modify_cache_attributes(
                    cache:,
                    cache_name: nil,
                    description: nil,
                    zone:)eval(build_fetch 'ModifyCacheAttributes')
                end

                def describe_cache_nodes(
                    cache: nil,
                    cache_nodes_N: [],
                    status_N: [],
                    search_word: nil,
                    verbose: nil,
                    offset: nil,
                    limit: nil,
                    zone:)eval(build_fetch 'DescribeCacheNodes')
                end

                def add_cache_nodes(
                    cache:,
                    node_count:,
                    private_ips_N_cache_role: [],
                    private_ips_N_private_ips: nil,
                    zone:)eval(build_fetch 'AddCacheNodes')
                end

                def delete_cache_nodes(
                    cache:,
                    cache_nodes_N:,
                    zone:)eval(build_fetch 'DeleteCacheNodes')
                end

                def restart_cache_nodes(
                    cache:,
                    cache_nodes_N:,
                    zone:)eval(build_fetch 'RestartCacheNodes')
                end

                def modify_cache_node_attributes(
                    cache_node:,
                    cache_node_name: nil,
                    zone:)eval(build_fetch 'ModifyCacheNodeAttributes')
                end

                def create_cache_from_snapshot(
                    snapshot:,
                    vxnet:,
                    node_count: nil,
                    cache_name: nil,
                    cache_parameter_group: nil,
                    private_ips_N_cache_role: [],
                    private_ips_N_private_ips: [],
                    zone:)eval(build_fetch 'CreateCacheFromSnapshot')
                end

                def describe_cache_parameter_groups(
                    cache_parameter_groups_N: [],
                    cache_type: nil,
                    search_word: nil,
                    verbose: nil,
                    offset: nil,
                    limit: nil,
                    zone:)eval(build_fetch 'DescribeCacheParameterGroups')
                end

                def create_cache_parameter_group(
                    cache_type:,
                    cache_parameter_group_name: nil,
                    zone:)eval(build_fetch 'CreateCacheParameterGroup')
                end

                def apply_cache_parameter_group(
                    cache_parameter_group:,
                    caches_N: [],
                    zone:)eval(build_fetch 'ApplyCacheParameterGroup')
                end

                def delete_cache_parameter_groups(
                    cache_parameter_groups_N:,
                    zone:)eval(build_fetch 'DeleteCacheParameterGroups')
                end

                def modify_cache_parameter_group_attributes(
                    cache_parameter_group:,
                    cache_parameter_group_name: nil,
                    description: nil,
                    zone:)eval(build_fetch 'ModifyCacheParameterGroupAttributes')
                end

                def describe_cache_parameters(
                    cache_parameter_group:,
                    zone:)eval(build_fetch 'DescribeCacheParameters')
                end

                def update_cache_parameters(
                    cache_parameter_group:,
                    parameters_N_cache_parameter_name:,
                    parameters_N_cache_parameter_value:,
                    zone:)eval(build_fetch 'UpdateCacheParameters')
                end

                def reset_cache_parameters(
                    cache_parameter_group:,
                    cache_parameter_names_N: [],
                    zone:)eval(build_fetch 'ResetCacheParameters')
                end

                # S2

                def create_s2_server(
                    vxnet_id:,
                    service_type:,
                    name: nil,
                    s2_server_type: nil,
                    private_ip: nil,
                    description: nil,
                    zone:)eval(build_fetch 'CreateS2Server')
                end

                def describe_s2_servers(
                    s2_servers_N: [],
                    status_N: [],
                    search_word: nil,
                    tags_N: nil,
                    verbose: nil,
                    offset: nil,
                    limit: nil,
                    zone:)eval(build_fetch 'DescribeS2Servers')
                end

                def modify_s2_server(
                    s2_server:,
                    name: nil,
                    description: nil,
                    zone:)eval(build_fetch 'ModifyS2Server')
                end

                def resize_s2_servers(
                    s2_server:,
                    s2_server_type:,
                    zone:)eval(build_fetch 'ResizeS2Servers')
                end

                def delete_s2_servers(
                    s2servers_N:,
                    zone:)eval(build_fetch 'DeleteS2Servers')
                end

                def power_on_s2_servers(
                    s2_servers_N:,
                    zone:)eval(build_fetch 'PowerOnS2Servers')
                end

                def power_off_s2_servers(
                    s2_servers_N:,
                    zone:)eval(build_fetch 'PowerOffS2Servers')
                end

                def update_s2_servers(
                    s2_servers_N:,
                    zone:)eval(build_fetch 'UpdateS2Servers')
                end

                def change_s2_server_vxnet(
                    s2_server:,
                    vxnet:,
                    private_ip: nil,
                    zone:)eval(build_fetch 'ChangeS2ServerVxnet')
                end

                def create_s2_shared_target(
                    s2_server:,
                    export_name:,
                    target_type:,
                    description: nil,
                    volumes_N: [],
                    initiator_names_N: [],
                    zone:)eval(build_fetch 'CreateS2SharedTarget')
                end

                def describe_s2_shared_targets(
                    shared_targets_N: [],
                    s2_server_id: nil,
                    search_word: nil,
                    verbose: nil,
                    offset: nil,
                    limit: nil,
                    zone:)eval(build_fetch 'DescribeS2SharedTargets')
                end

                def delete_s2_shared_targets(
                    shared_targets_N:,
                    zone:)eval(build_fetch 'DeleteS2SharedTargets')
                end

                def enable_s2_shared_targets(
                    shared_targets_N:,
                    zone:)eval(build_fetch 'EnableS2SharedTargets')
                end

                def disable_s2_shared_targets(
                    shared_targets_N:,
                    zone:)eval(build_fetch 'DisableS2SharedTargets')
                end

                def modify_s2_shared_targets(
                    shared_targets_N:,
                    operation:,
                    initiator_names_N:,
                    zone:)eval(build_fetch 'ModifyS2SharedTargets')
                end

                def attach_to_s2_shared_target(
                    shared_target:,
                    volumes_N:,
                    zone:)eval(build_fetch 'AttachToS2SharedTarget')
                end

                def detach_from_s2_shared_target(
                    shared_target:,
                    volumes_N:,
                    zone:)eval(build_fetch 'DetachFromS2SharedTarget')
                end

                def describe_s2_default_parameters(
                    service_type:,
                    target_type:,
                    offset:,
                    limit:,
                    zone:)eval(build_fetch 'DescribeS2DefaultParameters')
                end

                # Spark

                def add_spark_nodes(
                    spark:,
                    node_count:,
                    spark_node_name: nil,
                    private_ips_N_role: [],
                    private_ips_N_private_ips: [],
                    zone:)eval(build_fetch 'AddSparkNodes')
                end

                def delete_spark_nodes(
                    spark:,
                    spark_nodes_N:,
                    zone:)eval(build_fetch 'AddSparkNodes')
                end

                def start_sparks(
                    sparks_N:,
                    zone:)eval(build_fetch 'StartSparks')
                end

                def stop_sparks(
                    sparks_N:,
                    zone:)eval(build_fetch 'StopSparks')
                end
            end

        end
    end
end