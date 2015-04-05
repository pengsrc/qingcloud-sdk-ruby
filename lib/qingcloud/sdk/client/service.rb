module QingCloud
    module SDK
        module Client

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
                    instances: [],
                    image_id: [],
                    instance_type: [],
                    status: [],
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
                    vxnets: [],
                    security_group: nil,
                    volumes: [],
                    need_newsid: nil,
                    need_userdata: nil,
                    userdata_type: nil,
                    userdata_value: nil,
                    userdata_path: nil,
                    zone:)eval(build_fetch_match)
                end

                def terminate_instances(
                    instances:,
                    zone:)eval(build_fetch_match)
                end

                def start_instances(
                    instances:,
                    zone:)eval(build_fetch_match)
                end

                def stop_instances(
                    instances:,
                    force: nil,
                    zone:)eval(build_fetch_match)
                end

                def restart_instances(
                    instances:,
                    zone:)eval(build_fetch_match)
                end

                def reset_instances(
                    instances:,
                    login_mode:,
                    login_keypair: nil,
                    login_passwd: nil,
                    need_newsid: nil,
                    zone:)eval(build_fetch_match)
                end

                def resize_instances(
                    instances:,
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
                    volumes: [],
                    volume_type: nil,
                    status: [],
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
                    volumes:,
                    zone:)eval(build_fetch_match)
                end

                def attach_volumes(
                    volumes:,
                    instance:,
                    zone:)eval(build_fetch_match)
                end

                def detach_volumes(
                    volumes:,
                    instance:,
                    zone:)eval(build_fetch_match)
                end

                def resize_volumes(
                    volumes:,
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
                    vxnets: [],
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
                    vxnets:,
                    zone:)eval(build_fetch_match)
                end

                def join_vxnets(
                    vxnet:,
                    instances:,
                    zone:)eval(build_fetch_match)
                end

                def leave_vxnets(
                    vxnet:,
                    instances:,
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
                    instances: [],
                    instance_type: nil,
                    status: nil,
                    image: nil,
                    offset: nil,
                    limit: nil,
                    zone:)eval(build_fetch_match)
                end

                # Router

                def describe_routers(
                    routers: [],
                    status: [],
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
                    routers:,
                    zone:)eval(build_fetch_match)
                end

                def update_routers(
                    routers:,
                    zone:)eval(build_fetch_match)
                end

                def power_off_routers(
                    routers:,
                    zone:)eval(build_fetch_match)
                end

                def power_on_routers(
                    routers:,
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
                    vxnets:,
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
                    eips: [],
                    instance_id: nil,
                    status: [],
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
                    eips: [],
                    zone:)eval(build_fetch_match)
                end

                def associate_eips(
                    eip:,
                    instance:,
                    zone:)eval(build_fetch_match)
                end

                def dssociate_eips(
                    eip:,
                    zone:)eval(build_fetch_match)
                end

                def change_eips_bandwidth(
                    eips:,
                    bandwidth:,
                    zone:)eval(build_fetch_match)
                end

                def change_eips_billing_mode(
                    eips:,
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
                    security_groups: [],
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
                    security_groups:,
                    zone:)eval(build_fetch_match)
                end

                def apply_security_group(
                    security_group:,
                    instances: [],
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
                    security_group_rules: [],
                    direction: nil,
                    offset: nil,
                    limit: nil,
                    zone:)eval(build_fetch_match)
                end

                # KeyPair

                def describe_key_pairs(
                    keypairs: [],
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
                    keypairs:,
                    zone:)eval(build_fetch_match)
                end

                def attach_key_pairs(
                    keypairs:,
                    instances:,
                    zone:)eval(build_fetch_match)
                end

                def detach_key_pairs(
                    keypairs:,
                    instances:,
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
                    images: [],
                    processor_type: nil,
                    os_family: nil,
                    visibility: nil,
                    provider: nil,
                    status: [],
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
                    images:,
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
                    eips: [],
                    vxnet: nil,
                    private_ip: nil,
                    loadbalancer_type: nil,
                    loadbalancer_name: nil,
                    security_group: nil,
                    zone:)eval(build_fetch_match)
                end

                def describe_load_balancers(
                    loadbalancers: [],
                    status: [],
                    search_word: nil,
                    verbose: nil,
                    offset: nil,
                    limit: nil,
                    zone:)eval(build_fetch_match)
                end

                def delete_load_balancers(
                    loadbalancers:,
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
                    loadbalancers:,
                    zone:)eval(build_fetch_match)
                end

                def stop_load_balancers(
                    loadbalancers:,
                    zone:)eval(build_fetch_match)
                end

                def update_load_balancers(
                    loadbalancers:,
                    zone:)eval(build_fetch_match)
                end

                def resize_load_balancers(
                    loadbalancers:,
                    loadbalancer_type:,
                    zone:)eval(build_fetch_match)
                end

                def associate_eips_to_load_balancer(
                    eips:,
                    loadbalancer:,
                    zone:)eval(build_fetch_match)
                end

                def dissociate_eips_from_load_balancer(
                    eips:,
                    loadbalancer:,
                    zone:)eval(build_fetch_match)
                end

                # Monitor

                def get_monitor(
                    resource:,
                    meters:,
                    step:,
                    start_time:,
                    end_time:,
                    zone:)eval(build_fetch_match)
                end

                def get_load_balancer_monitor(
                    resource:,
                    meters:,
                    step:,
                    start_time:,
                    end_time:,
                    zone:)eval(build_fetch_match)
                end

                def get_rdb_monitor(
                    resource:,
                    meters:,
                    step:,
                    start_time:,
                    end_time:,
                    zone:)eval(build_fetch 'GetRDBMonitor')
                end

                # Snapshot

                def describe_snapshots(
                    snapshots: [],
                    resource_id: nil,
                    snapshot_type: nil,
                    status: [],
                    search_word: nil,
                    verbose: nil,
                    offset: nil,
                    limit: nil,
                    zone:)eval(build_fetch_match)
                end

                def create_snapshots(
                    resources:,
                    snapshot_name: nil,
                    is_full: nil,
                    zone:)eval(build_fetch_match)
                end

                def delete_snapshots(
                    snapshots:,
                    zone:)eval(build_fetch_match)
                end

                def apply_snapshots(
                    snapshots:,
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
                    jobs: [],
                    status: [],
                    job_action: nil,
                    verbose: nil,
                    offset: nil,
                    limit: nil,
                    zone:) eval(build_fetch_match)
                end

                # Zone

                def describe_zones(
                    zones: [],
                    status: []) eval(build_fetch_match)
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
                    rdbs: [],
                    status: [],
                    rdb_name: nil,
                    verbose: nil,
                    offset: nil,
                    limit: nil,
                    zone:)eval(build_fetch 'DescribeRDBs')
                end

                def delete_rdbs(
                    rdbs:,
                    zone:)eval(build_fetch 'DeleteRDBs')
                end

                def start_rdbs(
                    rdbs:,
                    zone:)eval(build_fetch 'StartRDBs')
                end

                def stop_rdbs(
                    rdbs:,
                    zone:)eval(build_fetch 'StopRDBs')
                end

                def resize_rdbs(
                    rdbs:,
                    rdb_type: nil,
                    storage_size: nil,
                    zone:)eval(build_fetch 'ResizeRDBs')
                end

                def rdbs_leave_vxnet(
                    rdbs:,
                    vxnet:,
                    zone:)eval(build_fetch 'RDBsLeaveVxnet')
                end

                def rdbs_join_vxnet(
                    rdbs:,
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

            end

        end
    end
end