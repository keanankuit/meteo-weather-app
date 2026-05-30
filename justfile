set shell := ["powershell.exe", "-c"]

gen:
    dart run build_runner build --delete-conflicting-outputs

watch:
    dart run build_runner watch --delete-conflicting-outputs

clean-generated:
    dart run build_runner clean

get:
    flutter pub get
