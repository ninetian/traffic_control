package Fixtures::Integration::Deliveryservice;
#
# Copyright 2015 Comcast Cable Communications Management, LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
use Moose;
extends 'DBIx::Class::EasyFixture';
use namespace::autoclean;

my %definition_for = (
	ds_movies_cdn1 => {
		new   => 'Deliveryservice',
		using => {
			id                   => 1,
			xml_id               => 'movies-c1',
			active               => 1,
			dscp                 => 40,
			signed               => 0,
			qstring_ignore       => 0,
			geo_limit            => 0,
			http_bypass_fqdn     => '',
			dns_bypass_ip        => '',
			dns_bypass_ttl       => undef,
			ccr_dns_ttl          => 3600,
			global_max_mbps      => 0,
			global_max_tps       => 0,
			long_desc            => 'test-ds1 long_desc',
			long_desc_1          => 'test-ds1 long_desc_1',
			long_desc_2          => 'test-ds1 long_desc_2',
			max_dns_answers      => 0,
			protocol             => 0,
			org_server_fqdn      => 'http://movies.origin.kabletown.net',
			info_url             => 'http://movies.info.kabletown.net',
			miss_lat             => '41.881944',
			miss_long            => '-87.627778',
			check_path           => '/crossdomain.xml',
			type                 => 8,
			profile              => 5,
			edge_header_rewrite  => 1,
			ipv6_routing_enabled => 1,
		},
	},
	ds_images_cdn1 => {
		new   => 'Deliveryservice',
		using => {
			id                  => 2,
			xml_id              => 'images-c1',
			active              => 1,
			dscp                => 40,
			signed              => 0,
			qstring_ignore      => 0,
			geo_limit           => 0,
			http_bypass_fqdn    => '',
			dns_bypass_ip       => '',
			dns_bypass_ttl      => undef,
			ccr_dns_ttl         => 3600,
			global_max_mbps     => 0,
			global_max_tps      => 0,
			long_desc           => 'test-ds2 long_desc',
			long_desc_1         => 'test-ds2 long_desc_1',
			long_desc_2         => 'test-ds2 long_desc_2',
			max_dns_answers     => 0,
			protocol            => 0,
			org_server_fqdn     => 'http://images.origin.kabletown.net',
			info_url            => 'http://images.info.kabletown.net',
			miss_lat            => '41.881944',
			miss_long           => '-87.627778',
			check_path          => '/crossdomain.xml',
			type                => 9,
			profile             => 5,
			edge_header_rewrite => 2,
		},
	},
	ds_games_cdn1 => {
		new   => 'Deliveryservice',
		using => {
			id                  => 3,
			xml_id              => 'games-c1',
			active              => 1,
			dscp                => 40,
			signed              => 0,
			qstring_ignore      => 0,
			geo_limit           => 0,
			http_bypass_fqdn    => '',
			dns_bypass_ip       => '',
			dns_bypass_ttl      => undef,
			ccr_dns_ttl         => 3600,
			global_max_mbps     => 0,
			global_max_tps      => 0,
			long_desc           => 'test-ds3 long_desc',
			long_desc_1         => 'test-ds3 long_desc_1',
			long_desc_2         => 'test-ds3 long_desc_2',
			max_dns_answers     => 0,
			protocol            => 0,
			org_server_fqdn     => 'http://games.origin.kabletown.net',
			info_url            => 'http://games.info.kabletown.net',
			miss_lat            => '41.881944',
			miss_long           => '-87.627778',
			check_path          => '/crossdomain.xml',
			type                => 9,
			profile             => 5,
			edge_header_rewrite => 3,
		},
	},
	ds_tv_cdn1 => {
		new   => 'Deliveryservice',
		using => {
			id               => 4,
			xml_id           => 'tv-c1',
			active           => 1,
			dscp             => 40,
			signed           => 0,
			qstring_ignore   => 0,
			geo_limit        => 0,
			http_bypass_fqdn => '',
			dns_bypass_ip    => '',
			dns_bypass_ttl   => undef,
			ccr_dns_ttl      => 3600,
			global_max_mbps  => 0,
			global_max_tps   => 0,
			long_desc        => 'test-ds1 long_desc',
			long_desc_1      => 'test-ds1 long_desc_1',
			long_desc_2      => 'test-ds1 long_desc_2',
			max_dns_answers  => 0,
			protocol         => 0,
			org_server_fqdn  => 'http://movies.origin.kabletown.net',
			info_url         => 'http://movies.info.kabletown.net',
			miss_lat         => '41.881944',
			miss_long        => '-87.627778',
			check_path       => '/crossdomain.xml',
			type             => 13,
			profile          => 5,
		},
	},
	ds_tv_nat_cdn2 => {
		new   => 'Deliveryservice',
		using => {
			id               => 11,
			xml_id           => 'tv-nat-c2',
			active           => 0,
			dscp             => 40,
			signed           => 0,
			qstring_ignore   => 0,
			geo_limit        => 0,
			http_bypass_fqdn => '',
			dns_bypass_ip    => '',
			dns_bypass_ttl   => undef,
			ccr_dns_ttl      => 3600,
			global_max_mbps  => 0,
			global_max_tps   => 0,
			long_desc        => 'test long_desc',
			long_desc_1      => 'test long_desc_1',
			long_desc_2      => 'test long_desc_2',
			max_dns_answers  => 0,
			protocol         => 0,
			org_server_fqdn  => 'http://national-tv.origin.kabletown.net',
			info_url         => 'http://tv.info.kabletown.net',
			miss_lat         => '41.881944',
			miss_long        => '-87.627778',
			check_path       => '/crossdomain.xml',
			type             => 24,
			profile          => 8,
		},
	},
	ds_cdl_cdn2 => {
		new   => 'Deliveryservice',
		using => {
			id                  => 12,
			xml_id              => 'cdl-c2',
			active              => 1,
			dscp                => 40,
			signed              => 1,
			qstring_ignore      => 0,
			geo_limit           => 0,
			http_bypass_fqdn    => '',
			dns_bypass_ip       => '',
			dns_bypass_ttl      => undef,
			ccr_dns_ttl         => 3600,
			global_max_mbps     => 0,
			global_max_tps      => 0,
			long_desc           => 'long_desc',
			long_desc_1         => 'long_desc_1',
			long_desc_2         => 'long_desc_2',
			max_dns_answers     => 0,
			protocol            => 0,
			org_server_fqdn     => 'http://cdl.origin.kabletown.net',
			info_url            => '',
			miss_lat            => '41.881944',
			miss_long           => '-87.627778',
			check_path          => '/crossdomain.xml',
			type                => 8,
			profile             => 8,
			edge_header_rewrite => 4,
		},
	},
	ds_tv_local_cdn2 => {
		new   => 'Deliveryservice',
		using => {
			id               => 13,
			xml_id           => 'tv-local-c2',
			active           => 1,
			dscp             => 40,
			signed           => 0,
			qstring_ignore   => 0,
			geo_limit        => 0,
			http_bypass_fqdn => '',
			dns_bypass_ip    => '',
			dns_bypass_ttl   => undef,
			ccr_dns_ttl      => 3600,
			global_max_mbps  => 0,
			global_max_tps   => 0,
			long_desc        => 'test-ds3 long_desc',
			long_desc_1      => 'test-ds3 long_desc_1',
			long_desc_2      => 'test-ds3 long_desc_2',
			max_dns_answers  => 0,
			protocol         => 0,
			org_server_fqdn  => 'https://games.origin.kabletown.net',
			info_url         => 'http://games.info.kabletown.net',
			miss_lat         => '41.881944',
			miss_long        => '-87.627778',
			check_path       => '/crossdomain.xml',
			type             => 13,
			profile          => 8,
		},
	},
	ds_nocache_c2 => {
		new   => 'Deliveryservice',
		using => {
			id               => 14,
			xml_id           => 'tv-nocache-c2',
			active           => 1,
			dscp             => 40,
			signed           => 0,
			qstring_ignore   => 0,
			geo_limit        => 0,
			http_bypass_fqdn => '',
			dns_bypass_ip    => '',
			dns_bypass_ttl   => undef,
			ccr_dns_ttl      => 3600,
			global_max_mbps  => 0,
			global_max_tps   => 0,
			long_desc        => 'test- long_desc',
			long_desc_1      => 'test- long_desc_1',
			long_desc_2      => 'test- long_desc_2',
			max_dns_answers  => 0,
			protocol         => 0,
			org_server_fqdn  => 'http://cc.origin.kabletown.net',
			info_url         => '',
			miss_lat         => '41.881944',
			miss_long        => '-87.627778',
			check_path       => '/crossdomain.xml',
			type             => 11,
			profile          => 8,
		},
	},
);

sub name {
	return "Deliveryservice";
}

sub get_definition {
	my ( $self, $name ) = @_;
	return $definition_for{$name};
}

sub all_fixture_names {
	return keys %definition_for;
}

__PACKAGE__->meta->make_immutable;

1;
