set -g OPENSSL_INCLUDE_DIR '/usr/local/opt/openssl/include'
set -l openssl_loc /usr/local/opt/openssl
set -l readline_loc /usr/local/opt/readline
set -l xcrun_path (xcrun --show-sdk-path)

set -gx CFLAGS "$CFLAGS -I$openssl_loc/include -I$readline_loc/include -I$xcrun_path/usr/include"

set -gx LDFLAGS "$LDFLAGS -L$openssl_loc/lib -L$readline_loc/lib"

set -gx PKG_CONFIG_PATH "$readline_loc/lib/pkgconfig $openssl_loc/lib/pkgconfig"

set -l new_path $openssl_loc/bin
set PATH $new_path $PATH
