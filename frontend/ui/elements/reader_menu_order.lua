local Device = require("device")

local order = {
    ["KOMenu:menu_buttons"] = {
        "navi",
        "typeset",
        "setting",
        "tools",
        "search",
        "filemanager",
        "main",
    },
    navi = {
        "table_of_contents",
        "bookmarks",
        "toggle_bookmark",
        "bookmark_browsing_mode",
        "page_map",
        "----------------------------",
        "go_to",
        "skim_to",
        "autoturn",
        "----------------------------",
        "go_to_previous_location",
    },
    typeset = {
        "set_render_style",
        "style_tweaks",
        "----------------------------",
        "change_font",
        "typography",
        "floating_punctuation",
        "----------------------------",
        "switch_zoom_mode",
        "----------------------------",
        "page_overlap",
        "speed_reading_module_perception_expander",
        "----------------------------",
        "highlight_options",
        "panel_zoom_options"
    },
    setting = {
        -- common settings
        -- those that don't exist will simply be skipped during menu gen
        "frontlight", -- if Device:hasFrontlight()
        "night_mode",
        "----------------------------",
        "network",
        "screen",
        "----------------------------",
        "taps_and_gestures",
        "navigation",
        "document",
        "----------------------------",
        "language",
        "device",
        "----------------------------",
        "djvu_render_mode",
        "status_bar",
    },
    device = {
        "keyboard_layout",
        "time",
        "battery",
        "charging_led", -- if Device:canToggleChargingLED()
        "autostandby",
        "autosuspend",
        "autoshutdown",
        "ignore_sleepcover",
        "ignore_open_sleepcover",
        "mass_storage_settings", -- if Device:canToggleMassStorage()
        "file_ext_assoc",
        "screenshot",
    },
    navigation = {
        "back_to_exit",
        "back_in_filemanager",
        "back_in_reader",
        "android_volume_keys",
        "android_camera_key",
        "android_haptic_feedback",
        "android_back_button",
        "----------------------------",
        "invert_page_turn_gestures",
        "invert_page_turn_buttons",
    },
    network = {
        "network_wifi",
        "network_proxy",
        "network_powersave",
        "network_restore",
        "network_info",
        "network_before_wifi_action",
        "network_after_wifi_action",
        "network_dismiss_scan",
        "----------------------------",
        "ssh",
    },
    screen = {
        "screensaver",
        "----------------------------",
        "screen_rotation",
        "----------------------------",
        "screen_dpi",
        "screen_eink_opt",
        "color_rendering",
        "----------------------------",
        "screen_timeout",
        "fullscreen",
    },
    taps_and_gestures = {
        "gesture_manager",
        "gesture_intervals",
        "----------------------------",
        "follow_links",
        "----------------------------",
        "menu_activate",
        "ignore_hold_corners",
        "screen_disable_double_tab",
    },
    tools = {
        "read_timer",
        "calibre",
        "evernote",
        "statistics",
        "progress_sync",
        "move_to_archive",
        "wallabag",
        "zsync",
        "news_downloader",
        "send2ebook",
        "text_editor",
        "qrclipboard",
        "profiles",
        "----------------------------",
        "more_tools",
    },
    more_tools = {
        "auto_frontlight",
        "battery_statistics",
        "synchronize_time",
        "keep_alive",
        "doc_setting_tweak",
        "terminal",
        "----------------------------",
        "plugin_management",
    },
    search = {
        "dictionary_lookup",
        "dictionary_lookup_history",
        "dictionary_settings",
        "----------------------------",
        "wikipedia_lookup",
        "wikipedia_history",
        "wikipedia_settings",
        "----------------------------",
        "translation_settings",
        "----------------------------",
        "goodreads",
        "----------------------------",
        "find_book_in_calibre_catalog",
        "fulltext_search",
    },
    filemanager = {},
    main = {
        "history",
        "open_previous_document",
        "----------------------------",
        "collections",
        "----------------------------",
        "book_status",
        "book_info",
        "----------------------------",
        "mass_storage_actions", -- if Device:canToggleMassStorage()
        "----------------------------",
        "ota_update", -- if Device:hasOTAUpdates()
        "help",
        "----------------------------",
        "exit_menu",
    },
    help = {
        "quickstart_guide",
        "----------------------------",
        "report_bug",
        "----------------------------",
        "system_statistics",  -- if enabled (Plugin)
        "version",
        "about",
    },
    exit_menu = {
        "restart_koreader", -- if Device:canRestart()
        "----------------------------",
        "sleep", -- if Device:canSuspend()
        "poweroff", -- if Device:canPowerOff()
        "reboot", -- if Device:canReboot()
        "----------------------------",
        "start_bq", -- if Device:isCervantes()
        "exit",
    }
}

if not Device:hasExitOptions() then
    order.exit_menu = nil
end

return order
