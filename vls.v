module main

import cli
import os

fn find_list_dir_contents(cmd cli.Command) {
	cwd := os.getwd()
	files := os.ls(cwd) or {
		return
	}
	for file in files {
		println(file)
	}
}

fn main() {
	mut cmd := cli.Command{
		name: 'vls'
		description: 'ls commmad alternative written in V.'
		version: '0.1.0'
		execute: find_list_dir_contents
	}
	cmd.parse(os.args)
}
