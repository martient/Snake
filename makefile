build_all:
	build_macos, build_wasm

build_macos:
	cargo build --release

build_wasm:
	cargo build --release --target wasm32-unknown-unknown
	wasm-bindgen --out-dir . --target web target/wasm32-unknown-unknown/release/client.wasm