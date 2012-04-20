# We need a way to prevent the stuff Google Apps replaces from being included in the build.
# This is a hacky way to do that.
ifdef WITH_GOOGLE_APPS
    PACKAGES.Phone.OVERRIDES := Gallery2 QuickSearchBox PicoTts Provision Music
endif
