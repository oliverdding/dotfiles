if test -d /opt/local/etc/profile.d/; then
	for profile in /opt/local/etc/profile.d/*.sh; do
		test -r "$profile" && . "$profile"
	done
	unset profile
fi
