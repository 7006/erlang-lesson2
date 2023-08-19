{ pkgs }: {
	deps = [
		pkgs.killall
		pkgs.erlang
		pkgs.rebar3
		pkgs.erlang-ls
		pkgs.erlfmt
		pkgs.unixtools.netstat
	];
}
