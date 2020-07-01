module main

import os

fn main() {
	cwd := os.getwd()

	files := os.ls(cwd) or {
		return
	}

	for file in files {
		println(file)
	}
}