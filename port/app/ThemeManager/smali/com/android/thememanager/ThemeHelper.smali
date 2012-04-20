.class public Lcom/android/thememanager/ThemeHelper;
.super Ljava/lang/Object;
.source "ThemeHelper.java"

# interfaces
.implements Lmiui/app/resourcebrowser/ResourceConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/thememanager/ThemeHelper$BackupThemeTask;
    }
.end annotation


# static fields
.field public static ALL_RINGTONE_FLAGS:J

.field public static final BACKUP_PATH:Ljava/lang/String;

.field public static final BACKUP_THEME_PATH:Ljava/lang/String;

.field public static final CLOCK_PHOTO_SIZE_ARRAY:[Ljava/lang/String;

.field public static final DEFAULT_ALARM_FILE_PATH:Ljava/lang/String;

.field public static final DEFAULT_NOTIFICATION_FILE_PATH:Ljava/lang/String;

.field public static final DEFAULT_RINGTONE_FILE_PATH:Ljava/lang/String;

.field public static final DEFAULT_THEME_FLAGS:J

.field public static final DOWNLOADED_ALARM_PATH:Ljava/lang/String;

.field public static final DOWNLOADED_LOCKSCREEN_PATH:Ljava/lang/String;

.field public static final DOWNLOADED_NOTIFICATION_PATH:Ljava/lang/String;

.field public static final DOWNLOADED_RESOURCE_BASE_PATH:Ljava/lang/String;

.field public static final DOWNLOADED_RINGTONE_PATH:Ljava/lang/String;

.field public static final DOWNLOADED_THEME_PATH:Ljava/lang/String;

.field public static final DOWNLOADED_WALLPAPER_PATH:Ljava/lang/String;

.field public static final EXTERNAL_ALARM_PATH:Ljava/lang/String;

.field public static final EXTERNAL_LOCKSCREEN_PATH:Ljava/lang/String;

.field public static final EXTERNAL_NOTIFICATION_PATH:Ljava/lang/String;

.field public static final EXTERNAL_RESOURCE_BASE_PATH:Ljava/lang/String;

.field public static final EXTERNAL_RINGTONE_PATH:Ljava/lang/String;

.field public static final EXTERNAL_THEME_PATH:Ljava/lang/String;

.field public static final EXTERNAL_WALLPAPER_PATH:Ljava/lang/String;

.field public static final INTERNAL_ALARM_PATH:Ljava/lang/String;

.field public static final INTERNAL_LOCKSCREEN_PATH:Ljava/lang/String;

.field public static final INTERNAL_NOTIFICATION_PATH:Ljava/lang/String;

.field public static final INTERNAL_RESOURCE_BASE_PATH:Ljava/lang/String;

.field public static final INTERNAL_RINGTONE_PATH:Ljava/lang/String;

.field public static final INTERNAL_THEME_PATH:Ljava/lang/String;

.field public static final INTERNAL_WALLPAPER_PATH:Ljava/lang/String;

.field public static final THEME_FLAG_COUNT:I

.field public static final THEME_PATH:Ljava/lang/String;

.field public static final THEME_PATH_PREVIEW:Ljava/lang/String;

.field private static final sAudioEffectMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final sAudioEffectOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sComponentIcon:[I

.field public static final sComponentIdentity:[Ljava/lang/String;

.field public static final sComponentOrder:[J

.field public static final sComponentPreviewPrefix:[Ljava/lang/String;

.field private static final sComponentTitle:[I

.field private static final sDisablePackagesReplaceSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final sLOG2:D

.field private static sPlatformSupportReplaceFont:Z

.field public static final sPreviewCacheOrder:[J

.field public static sPreviewShowingOrder:[J

.field private static final sUnCompressedComponent:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/16 v6, 0x12

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 77
    sget-object v0, Lcom/android/thememanager/ThemeHelper;->MIUI_INTERNAL_PATH:Ljava/lang/String;

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->INTERNAL_RESOURCE_BASE_PATH:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/thememanager/ThemeHelper;->INTERNAL_RESOURCE_BASE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "theme"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->INTERNAL_THEME_PATH:Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/thememanager/ThemeHelper;->INTERNAL_RESOURCE_BASE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "wallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->INTERNAL_WALLPAPER_PATH:Ljava/lang/String;

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/thememanager/ThemeHelper;->INTERNAL_RESOURCE_BASE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "wallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->INTERNAL_LOCKSCREEN_PATH:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/thememanager/ThemeHelper;->INTERNAL_RESOURCE_BASE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ringtone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->INTERNAL_RINGTONE_PATH:Ljava/lang/String;

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/thememanager/ThemeHelper;->INTERNAL_RESOURCE_BASE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ringtone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->INTERNAL_NOTIFICATION_PATH:Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/thememanager/ThemeHelper;->INTERNAL_RESOURCE_BASE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ringtone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->INTERNAL_ALARM_PATH:Ljava/lang/String;

    .line 85
    sget-object v0, Lcom/android/thememanager/ThemeHelper;->MIUI_EXTERNAL_PATH:Ljava/lang/String;

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->EXTERNAL_RESOURCE_BASE_PATH:Ljava/lang/String;

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/thememanager/ThemeHelper;->EXTERNAL_RESOURCE_BASE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "theme"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->EXTERNAL_THEME_PATH:Ljava/lang/String;

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/thememanager/ThemeHelper;->EXTERNAL_RESOURCE_BASE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "wallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->EXTERNAL_WALLPAPER_PATH:Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/thememanager/ThemeHelper;->EXTERNAL_RESOURCE_BASE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "wallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->EXTERNAL_LOCKSCREEN_PATH:Ljava/lang/String;

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/thememanager/ThemeHelper;->EXTERNAL_RESOURCE_BASE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ringtone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->EXTERNAL_RINGTONE_PATH:Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/thememanager/ThemeHelper;->EXTERNAL_RESOURCE_BASE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ringtone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->EXTERNAL_NOTIFICATION_PATH:Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/thememanager/ThemeHelper;->EXTERNAL_RESOURCE_BASE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ringtone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->EXTERNAL_ALARM_PATH:Ljava/lang/String;

    .line 93
    sget-object v0, Lcom/android/thememanager/ThemeHelper;->MIUI_PATH:Ljava/lang/String;

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_RESOURCE_BASE_PATH:Ljava/lang/String;

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_RESOURCE_BASE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "theme"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_THEME_PATH:Ljava/lang/String;

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_RESOURCE_BASE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "wallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_WALLPAPER_PATH:Ljava/lang/String;

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_RESOURCE_BASE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "wallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_LOCKSCREEN_PATH:Ljava/lang/String;

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_RESOURCE_BASE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ringtone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_RINGTONE_PATH:Ljava/lang/String;

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_RESOURCE_BASE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ringtone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_NOTIFICATION_PATH:Ljava/lang/String;

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_RESOURCE_BASE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ringtone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_ALARM_PATH:Ljava/lang/String;

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/media/audio/ringtones/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ro.config.ringtone"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->DEFAULT_RINGTONE_FILE_PATH:Ljava/lang/String;

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/media/audio/notifications/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ro.config.notification_sound"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->DEFAULT_NOTIFICATION_FILE_PATH:Ljava/lang/String;

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/media/audio/alarms/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ro.config.alarm_alert"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->DEFAULT_ALARM_FILE_PATH:Ljava/lang/String;

    .line 115
    sget-object v0, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_THEME_PATH:Ljava/lang/String;

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->THEME_PATH:Ljava/lang/String;

    .line 116
    sget-object v0, Lcom/android/thememanager/ThemeHelper;->PREVIEW_PATH:Ljava/lang/String;

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->THEME_PATH_PREVIEW:Ljava/lang/String;

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/thememanager/ThemeHelper;->THEME_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/backup"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->BACKUP_PATH:Ljava/lang/String;

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/thememanager/ThemeHelper;->BACKUP_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/backup.mtz"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->BACKUP_THEME_PATH:Ljava/lang/String;

    .line 148
    const-wide/16 v0, 0x700

    sput-wide v0, Lcom/android/thememanager/ThemeHelper;->ALL_RINGTONE_FLAGS:J

    .line 152
    const-wide/high16 v0, 0x4000

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lcom/android/thememanager/ThemeHelper;->sLOG2:D

    .line 154
    const-wide/32 v0, 0x20000

    invoke-static {v0, v1}, Lcom/android/thememanager/ThemeHelper;->getComponentIndex(J)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/thememanager/ThemeHelper;->THEME_FLAG_COUNT:I

    .line 196
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "1x2"

    aput-object v1, v0, v7

    const-string v1, "2x2"

    aput-object v1, v0, v5

    const-string v1, "2x4"

    aput-object v1, v0, v8

    const/4 v1, 0x3

    const-string v2, "4x4"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->CLOCK_PHOTO_SIZE_ARRAY:[Ljava/lang/String;

    .line 238
    new-array v0, v6, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->sComponentIcon:[I

    .line 259
    new-array v0, v6, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->sComponentTitle:[I

    .line 316
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "framework-res"

    aput-object v1, v0, v7

    const-string v1, "wallpaper/default_wallpaper.jpg"

    aput-object v1, v0, v5

    const-string v1, "wallpaper/default_lock_wallpaper.jpg"

    aput-object v1, v0, v8

    const/4 v1, 0x3

    const-string v2, "icons"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "fonts"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "boots/bootanimation.zip"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "boots/bootaudio.mp3"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.android.mms"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ringtones/ringtone.mp3"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ringtones/notification.mp3"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ringtones/alarm.mp3"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.android.contacts"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "lockscreen"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.android.systemui"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.miui.home"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "audioeffect"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "clock_"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "photoframe_"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->sComponentIdentity:[Ljava/lang/String;

    .line 342
    sput-boolean v5, Lcom/android/thememanager/ThemeHelper;->sPlatformSupportReplaceFont:Z

    .line 343
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->sDisablePackagesReplaceSet:Ljava/util/HashSet;

    .line 391
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->sAudioEffectMap:Ljava/util/HashMap;

    .line 392
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->sAudioEffectOrder:Ljava/util/ArrayList;

    .line 436
    const-wide/16 v0, 0x0

    .line 438
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipFile;

    const-string v3, "/system/media/theme/default.mtz"

    invoke-direct {v2, v3}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/thememanager/ThemeHelper;->identifyComponents(Ljava/util/zip/ZipFile;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 441
    :goto_0
    sput-wide v0, Lcom/android/thememanager/ThemeHelper;->DEFAULT_THEME_FLAGS:J

    .line 548
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "preview_"

    aput-object v1, v0, v7

    aput-object v4, v0, v5

    aput-object v4, v0, v8

    const/4 v1, 0x3

    const-string v2, "preview_icons_"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "preview_fonts_"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "preview_animation_"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v4, v0, v1

    const/4 v1, 0x7

    const-string v2, "preview_mms_"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    aput-object v4, v0, v1

    const/16 v1, 0x9

    aput-object v4, v0, v1

    const/16 v1, 0xa

    aput-object v4, v0, v1

    const/16 v1, 0xb

    const-string v2, "preview_contact_"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "preview_lockscreen_"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "preview_statusbar_"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "preview_launcher_"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    aput-object v4, v0, v1

    const/16 v1, 0x10

    const-string v2, "preview_clock_"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "preview_photo_frame_"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->sComponentPreviewPrefix:[Ljava/lang/String;

    .line 570
    const/16 v0, 0xc

    new-array v0, v0, [J

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->sPreviewShowingOrder:[J

    .line 595
    const/16 v0, 0xc

    new-array v0, v0, [J

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->sPreviewCacheOrder:[J

    .line 610
    new-array v0, v6, [J

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->sComponentOrder:[J

    .line 632
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "wallpaper"

    aput-object v1, v0, v7

    const-string v1, "fonts"

    aput-object v1, v0, v5

    const-string v1, "boots"

    aput-object v1, v0, v8

    const/4 v1, 0x3

    const-string v2, "ringtones"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "preview"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "description.xml"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "audioeffect"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/thememanager/ThemeHelper;->sUnCompressedComponent:[Ljava/lang/String;

    return-void

    .line 439
    :catch_0
    move-exception v2

    goto/16 :goto_0

    .line 238
    :array_0
    .array-data 0x4
        0x10t 0x0t 0x2t 0x7ft
        0x1at 0x0t 0x2t 0x7ft
        0x14t 0x0t 0x2t 0x7ft
        0x11t 0x0t 0x2t 0x7ft
        0xft 0x0t 0x2t 0x7ft
        0xbt 0x0t 0x2t 0x7ft
        0xct 0x0t 0x2t 0x7ft
        0x15t 0x0t 0x2t 0x7ft
        0x18t 0x0t 0x2t 0x7ft
        0x16t 0x0t 0x2t 0x7ft
        0x9t 0x0t 0x2t 0x7ft
        0xet 0x0t 0x2t 0x7ft
        0x13t 0x0t 0x2t 0x7ft
        0x19t 0x0t 0x2t 0x7ft
        0x12t 0x0t 0x2t 0x7ft
        0xat 0x0t 0x2t 0x7ft
        0xdt 0x0t 0x2t 0x7ft
        0x17t 0x0t 0x2t 0x7ft
    .end array-data

    .line 259
    :array_1
    .array-data 0x4
        0x10t 0x0t 0x9t 0x7ft
        0x12t 0x0t 0x9t 0x7ft
        0x13t 0x0t 0x9t 0x7ft
        0x14t 0x0t 0x9t 0x7ft
        0x17t 0x0t 0x9t 0x7ft
        0x15t 0x0t 0x9t 0x7ft
        0x16t 0x0t 0x9t 0x7ft
        0x11t 0x0t 0x9t 0x7ft
        0x18t 0x0t 0x9t 0x7ft
        0x19t 0x0t 0x9t 0x7ft
        0x1at 0x0t 0x9t 0x7ft
        0x1bt 0x0t 0x9t 0x7ft
        0x1ct 0x0t 0x9t 0x7ft
        0x1dt 0x0t 0x9t 0x7ft
        0x1et 0x0t 0x9t 0x7ft
        0x1ft 0x0t 0x9t 0x7ft
        0x20t 0x0t 0x9t 0x7ft
        0x21t 0x0t 0x9t 0x7ft
    .end array-data

    .line 570
    :array_2
    .array-data 0x8
        0x0t 0x10t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x40t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x20t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x2t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x80t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 595
    :array_3
    .array-data 0x8
        0x0t 0x10t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x20t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x40t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x80t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x2t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 610
    :array_4
    .array-data 0x8
        0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x10t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x20t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x40t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x2t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x80t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1110
    return-void
.end method

.method public static applyBootAudio(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "path"

    .prologue
    const/4 v3, -0x1

    const/4 v5, 0x0

    .line 973
    const/4 v0, 0x0

    .line 975
    .local v0, result:Z
    const-string v2, "/data/system/theme//boots"

    invoke-static {v2, v5}, Lmiui/util/CommandLineUtils;->mkdir(Ljava/lang/String;Ljava/lang/String;)Z

    .line 977
    const-string v1, "/data/system/theme//boots/bootaudio.mp3"

    .line 978
    .local v1, targetPath:Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 979
    invoke-static {v1, v5}, Lmiui/util/CommandLineUtils;->rm(Ljava/lang/String;Ljava/lang/String;)Z

    .line 980
    const-string v2, "touch %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v5, v2, v3}, Lmiui/util/CommandLineUtils;->run(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    .line 987
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 988
    const-wide/16 v2, 0x40

    invoke-static {p0, v2, v3, p1}, Lcom/android/thememanager/ThemeHelper;->saveUserPreferenceOnlyPath(Landroid/content/Context;JLjava/lang/String;)V

    .line 991
    :cond_1
    return v0

    .line 982
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 983
    invoke-static {p1, v1, v5}, Lmiui/util/CommandLineUtils;->cp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 984
    const/16 v2, 0x1fd

    invoke-static {v1, v2, v3, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    goto :goto_0
.end method

.method public static applyLockWallpaper(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11
    .parameter "context"
    .parameter "themePathID"

    .prologue
    .line 906
    :try_start_0
    const-string v5, "/data/system/theme//wallpaper/default_lock_wallpaper.jpg"

    .line 907
    .local v5, path:Ljava/lang/String;
    const-string v6, "/data/system/theme//wallpaper/default_lock_wallpaper_800.jpg"

    .line 908
    .local v6, path800:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/thememanager/ThemeHelper;->getScreenDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 909
    .local v4, metrics:Landroid/util/DisplayMetrics;
    iget v3, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 910
    .local v3, height:I
    const/16 v7, 0x320

    if-ne v3, v7, :cond_0

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 911
    move-object v5, v6

    .line 915
    :cond_0
    const/4 v0, 0x0

    .line 916
    .local v0, desPath:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 917
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 919
    const-string v7, "%s/%s_%s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    sget-object v10, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_WALLPAPER_PATH:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    const/4 v9, 0x2

    const-string v10, "lockscreen"

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 920
    sget-object v7, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_WALLPAPER_PATH:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lmiui/util/CommandLineUtils;->mkdir(Ljava/lang/String;Ljava/lang/String;)Z

    .line 921
    const/4 v7, 0x0

    invoke-static {v5, v0, v7}, Lmiui/util/CommandLineUtils;->cp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 925
    :goto_0
    const/4 v7, 0x0

    invoke-static {p0, v0, v7}, Lcom/android/thememanager/ThemeHelper;->saveLockWallpaper(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Z

    .line 929
    .end local v0           #desPath:Ljava/lang/String;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #height:I
    .end local v4           #metrics:Landroid/util/DisplayMetrics;
    .end local v5           #path:Ljava/lang/String;
    .end local v6           #path800:Ljava/lang/String;
    :goto_1
    return-void

    .line 923
    .restart local v0       #desPath:Ljava/lang/String;
    .restart local v2       #file:Ljava/io/File;
    .restart local v3       #height:I
    .restart local v4       #metrics:Landroid/util/DisplayMetrics;
    .restart local v5       #path:Ljava/lang/String;
    .restart local v6       #path800:Ljava/lang/String;
    :cond_1
    const-wide/16 v7, 0x4

    const-string v9, "/data/system/theme//lock_wallpaper"

    const/4 v10, 0x0

    invoke-static {p0, v7, v8, v9, v10}, Lcom/android/thememanager/ThemeHelper;->saveUserPreferenceOnlyPath(Landroid/content/Context;JLjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 926
    .end local v0           #desPath:Ljava/lang/String;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #height:I
    .end local v4           #metrics:Landroid/util/DisplayMetrics;
    .end local v5           #path:Ljava/lang/String;
    .end local v6           #path800:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 927
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static applyRingtone(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "context"
    .parameter "type"
    .parameter "subPath"
    .parameter "basePath"
    .parameter "themeName"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 1009
    const-string v3, "%s/%s"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p3, v4, v8

    aput-object p2, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1011
    .local v2, srcPath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1012
    .local v1, file:Ljava/io/File;
    const/4 v0, 0x0

    .line 1013
    .local v0, desPath:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1014
    if-ne p1, v6, :cond_1

    .line 1015
    sget-object v0, Lcom/android/thememanager/ThemeHelper;->DEFAULT_RINGTONE_FILE_PATH:Ljava/lang/String;

    .line 1027
    :cond_0
    :goto_0
    invoke-static {p0, p1, v0}, Lcom/android/thememanager/ThemeHelper;->setRingtone(Landroid/content/Context;ILjava/lang/String;)Z

    .line 1028
    return-void

    .line 1016
    :cond_1
    if-ne p1, v7, :cond_2

    .line 1017
    sget-object v0, Lcom/android/thememanager/ThemeHelper;->DEFAULT_NOTIFICATION_FILE_PATH:Ljava/lang/String;

    goto :goto_0

    .line 1018
    :cond_2
    const/4 v3, 0x4

    if-ne p1, v3, :cond_0

    .line 1019
    sget-object v0, Lcom/android/thememanager/ThemeHelper;->DEFAULT_ALARM_FILE_PATH:Ljava/lang/String;

    goto :goto_0

    .line 1022
    :cond_3
    const-string v3, "%s/%s_%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_RINGTONE_PATH:Ljava/lang/String;

    aput-object v5, v4, v8

    aput-object p4, v4, v6

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1023
    sget-object v3, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_RINGTONE_PATH:Ljava/lang/String;

    invoke-static {v3, v9}, Lmiui/util/CommandLineUtils;->mkdir(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1024
    invoke-static {v2, v0, v9}, Lmiui/util/CommandLineUtils;->cp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public static applyRingtones(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "flags"
    .parameter "name"
    .parameter "basePath"

    .prologue
    const-wide/16 v2, 0x0

    .line 995
    const-wide/16 v0, 0x100

    and-long/2addr v0, p1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 996
    const/4 v0, 0x1

    const-string v1, "ringtones/ringtone.mp3"

    invoke-static {p0, v0, v1, p4, p3}, Lcom/android/thememanager/ThemeHelper;->applyRingtone(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    :cond_0
    const-wide/16 v0, 0x200

    and-long/2addr v0, p1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1000
    const/4 v0, 0x2

    const-string v1, "ringtones/notification.mp3"

    invoke-static {p0, v0, v1, p4, p3}, Lcom/android/thememanager/ThemeHelper;->applyRingtone(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    :cond_1
    const-wide/16 v0, 0x400

    and-long/2addr v0, p1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 1004
    const/4 v0, 0x4

    const-string v1, "ringtones/alarm.mp3"

    invoke-static {p0, v0, v1, p4, p3}, Lcom/android/thememanager/ThemeHelper;->applyRingtone(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    :cond_2
    return-void
.end method

.method public static applyTheme(JJLjava/lang/Runnable;Lcom/android/thememanager/ThemeInfo;)V
    .locals 7
    .parameter "removeFlags"
    .parameter "applyFlags"
    .parameter "runnable"
    .parameter "info"

    .prologue
    .line 1231
    const/4 v6, 0x0

    move-wide v0, p0

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/android/thememanager/ThemeHelper;->applyTheme(JJLjava/lang/Runnable;Lcom/android/thememanager/ThemeInfo;Z)V

    .line 1232
    return-void
.end method

.method public static applyTheme(JJLjava/lang/Runnable;Lcom/android/thememanager/ThemeInfo;Z)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1236
    iget-object v0, p5, Lcom/android/thememanager/ThemeInfo;->mPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/thememanager/ThemeHelper;->isNewCompressedFormat(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p5

    move-wide v1, p0

    move-wide v3, p2

    move-object v5, p4

    .line 1237
    invoke-virtual/range {v0 .. v5}, Lcom/android/thememanager/ThemeInfo;->apply_async(JJLjava/lang/Runnable;)V

    .line 1259
    :goto_0
    return-void

    .line 1238
    :cond_0
    if-eqz p6, :cond_1

    move-object v0, p5

    move-wide v1, p0

    move-wide v3, p2

    move-object v5, p4

    .line 1239
    invoke-virtual/range {v0 .. v5}, Lcom/android/thememanager/ThemeInfo;->convert_async(JJLjava/lang/Runnable;)V

    goto :goto_0

    .line 1241
    :cond_1
    iget-object v0, p5, Lcom/android/thememanager/ThemeInfo;->mContext:Landroid/content/Context;

    const v1, 0x7f090037

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1242
    iget-object v1, p5, Lcom/android/thememanager/ThemeInfo;->mPath:Ljava/lang/String;

    invoke-static {v1}, Lmiui/app/resourcebrowser/ResourceHelper;->parseIdVersion(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p5, Lcom/android/thememanager/ThemeInfo;->mContext:Landroid/content/Context;

    const v2, 0x7f090038

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1245
    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p5, Lcom/android/thememanager/ThemeInfo;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090035

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x104000a

    new-instance v0, Lcom/android/thememanager/ThemeHelper$2;

    move-object v1, p5

    move-wide v2, p0

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/thememanager/ThemeHelper$2;-><init>(Lcom/android/thememanager/ThemeInfo;JJLjava/lang/Runnable;)V

    invoke-virtual {v7, v8, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public static applyWallpaper(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .parameter "context"
    .parameter "themePathID"

    .prologue
    .line 878
    :try_start_0
    const-string v4, "/data/system/theme//wallpaper/default_wallpaper.jpg"

    .line 879
    .local v4, path:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 883
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 884
    const-string v6, "%s/%s_%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    sget-object v9, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_WALLPAPER_PATH:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    const/4 v8, 0x2

    const-string v9, "wallpaper"

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 885
    .local v0, desPath:Ljava/lang/String;
    sget-object v6, Lcom/android/thememanager/ThemeHelper;->DOWNLOADED_WALLPAPER_PATH:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lmiui/util/CommandLineUtils;->mkdir(Ljava/lang/String;Ljava/lang/String;)Z

    .line 886
    const/4 v6, 0x0

    invoke-static {v4, v0, v6}, Lmiui/util/CommandLineUtils;->cp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 888
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 889
    .local v3, is:Ljava/io/InputStream;
    const-wide/16 v6, 0x2

    const/4 v8, 0x0

    invoke-static {p0, v6, v7, v0, v8}, Lcom/android/thememanager/ThemeHelper;->saveUserPreferenceOnlyPath(Landroid/content/Context;JLjava/lang/String;Z)V

    .line 896
    .end local v0           #desPath:Ljava/lang/String;
    :goto_0
    const-string v6, "wallpaper"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/WallpaperManager;

    .line 897
    .local v5, ws:Landroid/app/WallpaperManager;
    invoke-virtual {v5, v3}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V

    .line 898
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 902
    .end local v2           #file:Ljava/io/File;
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #path:Ljava/lang/String;
    .end local v5           #ws:Landroid/app/WallpaperManager;
    :goto_1
    return-void

    .line 891
    .restart local v2       #file:Ljava/io/File;
    .restart local v4       #path:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x302013e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 892
    .restart local v3       #is:Ljava/io/InputStream;
    const-wide/16 v6, 0x2

    const-string v8, ""

    const/4 v9, 0x0

    invoke-static {p0, v6, v7, v8, v9}, Lcom/android/thememanager/ThemeHelper;->saveUserPreferenceOnlyPath(Landroid/content/Context;JLjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 899
    .end local v2           #file:Ljava/io/File;
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #path:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 900
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static backupCurrentTheme(Landroid/content/Context;)V
    .locals 6
    .parameter

    .prologue
    .line 1096
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090007

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/android/thememanager/ThemeHelper;->BACKUP_THEME_PATH:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090006

    new-instance v2, Lcom/android/thememanager/ThemeHelper$1;

    invoke-direct {v2, p0}, Lcom/android/thememanager/ThemeHelper$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1108
    return-void
.end method

.method public static clearUserPreference(Landroid/content/SharedPreferences$Editor;J)V
    .locals 2
    .parameter "edit"
    .parameter "flag"

    .prologue
    .line 863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "path-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "flags-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "title-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "designer-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 867
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "author-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 868
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update_time-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 869
    return-void
.end method

.method public static convertIntoNewFormat(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .parameter "context"
    .parameter "themePath"

    .prologue
    .line 738
    const/4 v3, 0x0

    .line 739
    .local v3, result:Z
    invoke-static {p1}, Lmiui/app/resourcebrowser/ResourceHelper;->isZipResource(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "/system/media/theme"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 740
    invoke-static {p1}, Lcom/android/thememanager/ThemeHelper;->isNewCompressedFormat(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 741
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 742
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    .line 743
    .local v1, lastModifyTime:J
    invoke-static {p1}, Lcom/android/thememanager/ThemeHelper;->convertOldThemeIntoCompressedFormat(Ljava/lang/String;)Z

    move-result v3

    .line 744
    if-eqz v3, :cond_1

    .line 745
    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z

    .line 751
    .end local v0           #file:Ljava/io/File;
    .end local v1           #lastModifyTime:J
    :cond_0
    :goto_0
    return v3

    .line 747
    .restart local v0       #file:Ljava/io/File;
    .restart local v1       #lastModifyTime:J
    :cond_1
    const-string v4, "ResourceBrowser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail to convert new format: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static convertOldThemeIntoCompressedFormat(Ljava/lang/String;)Z
    .locals 15
    .parameter "themeZipFilePath"

    .prologue
    const/4 v14, 0x0

    .line 679
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 680
    .local v7, srcFile:Ljava/io/File;
    new-instance v10, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".cmp"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 683
    .local v10, tmpUnzipFile:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v14}, Lmiui/util/CommandLineUtils;->rm(Ljava/lang/String;Ljava/lang/String;)Z

    .line 684
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/android/thememanager/Helper;->unzip(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    const/4 v11, 0x3

    new-array v2, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "framework-res/res/drawable-hdpi/default_wallpaper.jpg"

    aput-object v12, v2, v11

    const/4 v11, 0x1

    const-string v12, "framework-res/res/drawable-hdpi/default_lock_wallpaper.jpg"

    aput-object v12, v2, v11

    const/4 v11, 0x2

    const-string v12, "framework-res/res/drawable-hdpi/default_lock_wallpaper_800.jpg"

    aput-object v12, v2, v11

    .line 690
    .local v2, deprecatedPaper:[Ljava/lang/String;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v6, v0, v4

    .line 691
    .local v6, paper:Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 692
    .local v9, tmpFile:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 694
    :try_start_0
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "wallpaper"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lmiui/app/resourcebrowser/ResourceHelper;->writeTo(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 696
    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 690
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 703
    .end local v6           #paper:Ljava/lang/String;
    .end local v9           #tmpFile:Ljava/io/File;
    :cond_1
    new-instance v3, Ljava/io/File;

    const-string v11, "framework-res/res/drawable-hdpi/default_lock_wallpaper.jpg"

    invoke-direct {v3, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 705
    .local v3, frameworkResFile:Ljava/io/File;
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 706
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 707
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "framework-res"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 710
    const/4 v1, 0x1

    .line 711
    .local v1, convertResult:Z
    invoke-virtual {v10}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v5, v0

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v5, :cond_5

    aget-object v8, v0, v4

    .line 712
    .local v8, sub:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/thememanager/ThemeHelper;->shouldCompressedComponent(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 713
    invoke-virtual {v8}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v11

    array-length v11, v11

    if-nez v11, :cond_4

    .line 715
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 711
    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 716
    :cond_4
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/thememanager/Helper;->convertFileToZipFormat(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 717
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v14}, Lmiui/util/CommandLineUtils;->rm(Ljava/lang/String;Ljava/lang/String;)Z

    .line 718
    const/4 v1, 0x0

    goto :goto_3

    .line 724
    .end local v8           #sub:Ljava/io/File;
    :cond_5
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/thememanager/Helper;->convertFileToZipFormat(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 725
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v14}, Lmiui/util/CommandLineUtils;->rm(Ljava/lang/String;Ljava/lang/String;)Z

    .line 726
    const/4 v1, 0x0

    .line 729
    :cond_6
    if-eqz v1, :cond_7

    .line 730
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 731
    invoke-virtual {v10, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 734
    :cond_7
    return v1

    .line 697
    .end local v1           #convertResult:Z
    .end local v3           #frameworkResFile:Ljava/io/File;
    .local v0, arr$:[Ljava/lang/String;
    .restart local v6       #paper:Ljava/lang/String;
    .restart local v9       #tmpFile:Ljava/io/File;
    :catch_0
    move-exception v11

    goto :goto_1
.end method

.method public static deleteDeprecatedPreviewCache()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/thememanager/ThemeHelper;->MIUI_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".cache/ThemeManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, deprecatedThemeMangerDir:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    const-string v1, "root"

    const-string v2, "rm -r %s"

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v5, v1, v2, v3}, Lmiui/util/CommandLineUtils;->run(ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 229
    :cond_0
    return-void
.end method

.method public static deleteUnusedThemeTmpFile(Ljava/lang/String;)Z
    .locals 1
    .parameter "themePath"

    .prologue
    .line 755
    const-string v0, ".mtz.cmp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ".mtz"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".zip"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 758
    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmiui/util/CommandLineUtils;->rm(Ljava/lang/String;Ljava/lang/String;)Z

    .line 759
    const/4 v0, 0x1

    .line 761
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static filterAudioEffect([Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .parameter "audio"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 419
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 420
    .local v6, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p0, :cond_2

    .line 421
    sget-object v7, Lcom/android/thememanager/ThemeHelper;->sAudioEffectOrder:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 422
    .local v5, orderName:Ljava/lang/String;
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 423
    .local v4, name:Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 424
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 422
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 431
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #orderName:Ljava/lang/String;
    :cond_2
    return-object v6
.end method

.method public static final getAllComponentsCombineFlag()J
    .locals 2

    .prologue
    .line 313
    const-wide/32 v0, 0x3ffff

    return-wide v0
.end method

.method public static getAllThirdAppResourcePath()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1262
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1263
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/system/theme/"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v3, v1

    :goto_0
    if-ge v3, v6, :cond_3

    aget-object v7, v5, v3

    .line 1264
    const-string v0, "preview"

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "description.xml"

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1263
    :cond_0
    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 1268
    :cond_1
    const/4 v2, 0x1

    move v0, v1

    .line 1269
    :goto_2
    sget-object v8, Lcom/android/thememanager/ThemeHelper;->sComponentIdentity:[Ljava/lang/String;

    array-length v8, v8

    if-ge v0, v8, :cond_4

    .line 1270
    sget-object v8, Lcom/android/thememanager/ThemeHelper;->sComponentIdentity:[Ljava/lang/String;

    aget-object v8, v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v0, v1

    .line 1275
    :goto_3
    if-eqz v0, :cond_0

    .line 1276
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1269
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1280
    :cond_3
    return-object v4

    :cond_4
    move v0, v2

    goto :goto_3
.end method

.method public static getClockPhotoCategory(Landroid/content/Context;J)Ljava/util/List;
    .locals 11
    .parameter "context"
    .parameter "flag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Ljava/util/List",
            "<",
            "Lmiui/app/resourcebrowser/ResourceCategory;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/32 v9, 0x10000

    .line 204
    cmp-long v7, p1, v9

    if-eqz v7, :cond_1

    const-wide/32 v7, 0x20000

    cmp-long v7, p1, v7

    if-eqz v7, :cond_1

    .line 205
    const/4 v3, 0x0

    .line 221
    :cond_0
    return-object v3

    .line 208
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v3, ret:Ljava/util/List;,"Ljava/util/List<Lmiui/app/resourcebrowser/ResourceCategory;>;"
    invoke-static {p1, p2}, Lcom/android/thememanager/ThemeHelper;->getTitleIDByFlag(J)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 211
    .local v6, title:Ljava/lang/String;
    cmp-long v7, p1, v9

    if-nez v7, :cond_2

    const/4 v5, 0x0

    .line 212
    .local v5, start:I
    :goto_0
    cmp-long v7, p1, v9

    if-nez v7, :cond_3

    const/4 v1, 0x3

    .line 213
    .local v1, end:I
    :goto_1
    move v2, v5

    .local v2, i:I
    :goto_2
    if-ge v2, v1, :cond_0

    .line 214
    sget-object v7, Lcom/android/thememanager/ThemeHelper;->CLOCK_PHOTO_SIZE_ARRAY:[Ljava/lang/String;

    aget-object v4, v7, v2

    .line 215
    .local v4, size:Ljava/lang/String;
    new-instance v0, Lmiui/app/resourcebrowser/ResourceCategory;

    invoke-direct {v0}, Lmiui/app/resourcebrowser/ResourceCategory;-><init>()V

    .line 216
    .local v0, cate:Lmiui/app/resourcebrowser/ResourceCategory;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lmiui/app/resourcebrowser/ResourceCategory;->setName(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v0, v4}, Lmiui/app/resourcebrowser/ResourceCategory;->setCode(Ljava/lang/String;)V

    .line 218
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 211
    .end local v0           #cate:Lmiui/app/resourcebrowser/ResourceCategory;
    .end local v1           #end:I
    .end local v2           #i:I
    .end local v4           #size:Ljava/lang/String;
    .end local v5           #start:I
    :cond_2
    const/4 v5, 0x1

    goto :goto_0

    .line 212
    .restart local v5       #start:I
    :cond_3
    const/4 v1, 0x4

    goto :goto_1
.end method

.method public static getCompatibleFlag(IJ)J
    .locals 4
    .parameter "platformVersion"
    .parameter "flag"

    .prologue
    .line 500
    const-wide/16 v0, 0x1

    .local v0, i:J
    :goto_0
    const-wide/32 v2, 0x20000

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 501
    invoke-static {v0, v1}, Lcom/android/thememanager/ConstantsHelper;->getMinPlatformVersion(J)I

    move-result v2

    sget v3, Lcom/android/thememanager/ConstantsHelper;->CURRENT_PLATFORM_VERSION:I

    invoke-static {p0, v2, v3}, Lmiui/app/resourcebrowser/ResourceHelper;->isCompatiblePlatformVersion(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 503
    const-wide/16 v2, -0x1

    xor-long/2addr v2, v0

    and-long/2addr p1, v2

    .line 500
    :cond_0
    const/4 v2, 0x1

    shl-long/2addr v0, v2

    goto :goto_0

    .line 506
    :cond_1
    return-wide p1
.end method

.method public static getComponentFilterPath(J)Ljava/util/ArrayList;
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v9, 0x1

    const-wide/16 v7, 0x0

    const/4 v1, 0x0

    .line 1284
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1285
    const-wide/16 v3, -0x1

    cmp-long v0, p0, v3

    if-eqz v0, :cond_5

    move v0, v1

    .line 1286
    :goto_0
    sget v3, Lcom/android/thememanager/ThemeHelper;->THEME_FLAG_COUNT:I

    if-ge v0, v3, :cond_3

    .line 1287
    shl-long v3, v9, v0

    .line 1288
    and-long v5, p0, v3

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    .line 1286
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1292
    :cond_1
    sget-object v5, Lcom/android/thememanager/ThemeHelper;->sComponentIdentity:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1293
    const-wide/16 v5, 0x4

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 1294
    const-string v3, "wallpaper/default_lock_wallpaper_800.jpg"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1297
    :cond_2
    sget-object v3, Lcom/android/thememanager/ThemeHelper;->sComponentPreviewPrefix:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    .line 1298
    const-string v3, "%s/%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "preview"

    aput-object v5, v4, v1

    const/4 v5, 0x1

    sget-object v6, Lcom/android/thememanager/ThemeHelper;->sComponentPreviewPrefix:[Ljava/lang/String;

    aget-object v6, v6, v0

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1302
    :cond_3
    and-long v0, p0, v9

    cmp-long v0, v0, v7

    if-eqz v0, :cond_4

    .line 1303
    const-string v0, "description.xml"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1309
    :cond_4
    :goto_2
    return-object v2

    .line 1306
    :cond_5
    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public static getComponentIndex(J)I
    .locals 4
    .parameter "flag"

    .prologue
    .line 232
    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 233
    const/4 v0, 0x0

    .line 235
    :goto_0
    return v0

    :cond_0
    long-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sget-wide v2, Lcom/android/thememanager/ThemeHelper;->sLOG2:D

    div-double/2addr v0, v2

    const-wide v2, 0x3fb999999999999aL

    add-double/2addr v0, v2

    double-to-int v0, v0

    goto :goto_0
.end method

.method public static final getComponentNumber(J)I
    .locals 3
    .parameter "flag"

    .prologue
    .line 300
    const/4 v0, 0x0

    .line 301
    .local v0, cnt:I
    const-wide/16 v1, -0x1

    cmp-long v1, p0, v1

    if-nez v1, :cond_0

    .line 302
    sget v1, Lcom/android/thememanager/ThemeHelper;->THEME_FLAG_COUNT:I

    add-int/lit8 v1, v1, 0x1

    .line 309
    :goto_0
    return v1

    .line 304
    :cond_0
    :goto_1
    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-eqz v1, :cond_1

    .line 305
    const-wide/16 v1, 0x1

    sub-long v1, p0, v1

    and-long/2addr p0, v1

    .line 306
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v1, v0

    .line 309
    goto :goto_0
.end method

.method public static getHumanNameForAudioEffect(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "ringtonePath"

    .prologue
    const/16 v2, 0x2e

    .line 407
    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 408
    .local v0, name:Ljava/lang/String;
    sget-object v1, Lcom/android/thememanager/ThemeHelper;->sAudioEffectMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 409
    sget-object v1, Lcom/android/thememanager/ThemeHelper;->sAudioEffectMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #name:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 411
    .restart local v0       #name:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_1

    .line 412
    const/4 v1, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 415
    :cond_1
    return-object v0
.end method

.method public static final getPreviewPrefixByFlag(J)Ljava/lang/String;
    .locals 2
    .parameter "flag"

    .prologue
    .line 586
    sget-object v0, Lcom/android/thememanager/ThemeHelper;->sComponentPreviewPrefix:[Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/thememanager/ThemeHelper;->getComponentIndex(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getResourceTypeFromFlags(J)J
    .locals 8
    .parameter "componentFlags"

    .prologue
    .line 531
    const-wide/16 v2, 0x0

    .line 532
    .local v2, resourceType:J
    const-wide/16 v4, 0x1

    invoke-static {v4, v5, p0, p1}, Lcom/android/thememanager/ThemeHelper;->matchThemeResource(JJ)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 533
    const-wide/16 v2, -0x1

    .line 545
    :cond_0
    :goto_0
    return-wide v2

    .line 534
    :cond_1
    const-wide/16 v4, 0x1004

    cmp-long v4, p0, v4

    if-nez v4, :cond_2

    .line 535
    const-wide/16 v2, 0x1000

    goto :goto_0

    .line 537
    :cond_2
    const-wide/32 v4, 0x3f8b8

    and-long/2addr p0, v4

    .line 538
    const-wide/16 v0, 0x1

    .local v0, i:J
    :goto_1
    const-wide/32 v4, 0x20000

    cmp-long v4, v0, v4

    if-gtz v4, :cond_0

    .line 539
    and-long v4, p0, v0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    .line 540
    move-wide v2, v0

    .line 541
    goto :goto_0

    .line 538
    :cond_3
    const/4 v4, 0x1

    shl-long/2addr v0, v4

    goto :goto_1
.end method

.method private static getScreenDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .locals 2
    .parameter "context"

    .prologue
    .line 955
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 956
    .local v0, ret:Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-nez v1, :cond_1

    .line 957
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    .end local v0           #ret:Landroid/util/DisplayMetrics;
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 959
    .restart local v0       #ret:Landroid/util/DisplayMetrics;
    :try_start_0
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 963
    :cond_1
    :goto_0
    return-object v0

    .line 960
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static final getTitleIDByFlag(J)I
    .locals 2
    .parameter "flag"

    .prologue
    .line 281
    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 282
    const v0, 0x7f090023

    .line 288
    :goto_0
    return v0

    .line 283
    :cond_0
    const-wide/32 v0, 0x10000000

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    .line 284
    const v0, 0x7f090022

    goto :goto_0

    .line 285
    :cond_1
    const-wide/16 v0, 0x1

    cmp-long v0, v0, p0

    if-gtz v0, :cond_2

    const-wide/32 v0, 0x20000

    cmp-long v0, p0, v0

    if-gtz v0, :cond_2

    .line 286
    sget-object v0, Lcom/android/thememanager/ThemeHelper;->sComponentTitle:[I

    invoke-static {p0, p1}, Lcom/android/thememanager/ThemeHelper;->getComponentIndex(J)I

    move-result v1

    aget v0, v0, v1

    goto :goto_0

    .line 288
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static identifyClockAndPhotoSize(Ljava/util/zip/ZipFile;J)Ljava/util/ArrayList;
    .locals 8
    .parameter "zipfile"
    .parameter "cloclOrPhotoFlag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipFile;",
            "J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 489
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 490
    .local v4, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v6, Lcom/android/thememanager/ThemeHelper;->sComponentIdentity:[Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/android/thememanager/ThemeHelper;->getComponentIndex(J)I

    move-result v7

    aget-object v3, v6, v7

    .line 491
    .local v3, namePrefix:Ljava/lang/String;
    sget-object v0, Lcom/android/thememanager/ThemeHelper;->CLOCK_PHOTO_SIZE_ARRAY:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v5, v0, v1

    .line 492
    .local v5, size:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 493
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 496
    .end local v5           #size:Ljava/lang/String;
    :cond_1
    return-object v4
.end method

.method public static identifyComponents(Ljava/util/zip/ZipFile;)J
    .locals 2
    .parameter "zipfile"

    .prologue
    .line 445
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/android/thememanager/ThemeHelper;->identifyComponents(Ljava/util/zip/ZipFile;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static identifyComponents(Ljava/util/zip/ZipFile;I)J
    .locals 13
    .parameter "zipfile"
    .parameter "platformVersion"

    .prologue
    const/4 v12, 0x1

    .line 449
    const-wide/16 v3, 0x0

    .line 450
    .local v3, flags:J
    const/4 v5, 0x1

    .local v5, i:I
    :goto_0
    sget v8, Lcom/android/thememanager/ThemeHelper;->THEME_FLAG_COUNT:I

    if-ge v5, v8, :cond_1

    .line 451
    sget-object v8, Lcom/android/thememanager/ThemeHelper;->sComponentIdentity:[Ljava/lang/String;

    aget-object v8, v8, v5

    invoke-virtual {p0, v8}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 452
    shl-int v8, v12, v5

    int-to-long v8, v8

    or-long/2addr v3, v8

    .line 450
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 458
    :cond_1
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 459
    .local v1, entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    const/4 v2, 0x0

    .line 460
    .local v2, entry:Ljava/util/zip/ZipEntry;
    const/4 v7, 0x0

    .line 461
    .local v7, path:Ljava/lang/String;
    :cond_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 462
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #entry:Ljava/util/zip/ZipEntry;
    check-cast v2, Ljava/util/zip/ZipEntry;

    .line 463
    .restart local v2       #entry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    .line 464
    const/4 v5, 0x0

    :goto_1
    sget v8, Lcom/android/thememanager/ThemeHelper;->THEME_FLAG_COUNT:I

    if-ge v5, v8, :cond_2

    .line 465
    const-wide/16 v8, 0x1

    shl-long/2addr v8, v5

    and-long/2addr v8, v3

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_3

    sget-object v8, Lcom/android/thememanager/ThemeHelper;->sComponentIdentity:[Ljava/lang/String;

    aget-object v8, v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 466
    if-nez v5, :cond_4

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "framework-res/res/drawable-hdpi/default_wallpaper.jpg"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "framework-res/res/drawable-hdpi/default_lock_wallpaper.jpg"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "framework-res/res/drawable-hdpi/default_lock_wallpaper_800.jpg"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 464
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 472
    :cond_4
    shl-int v8, v12, v5

    int-to-long v8, v8

    or-long/2addr v3, v8

    goto :goto_2

    .line 477
    :cond_5
    if-gez p1, :cond_6

    .line 478
    const-string v8, "description.xml"

    invoke-static {p0, v8}, Lmiui/app/resourcebrowser/resource/ZipFileHelper;->getZipResourceDescribeInfo(Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    .line 480
    .local v6, nvp:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v6, :cond_7

    :try_start_0
    const-string v8, "uiVersion"

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 485
    .end local v6           #nvp:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    :goto_3
    invoke-static {p1, v3, v4}, Lcom/android/thememanager/ThemeHelper;->getCompatibleFlag(IJ)J

    move-result-wide v8

    return-wide v8

    .line 480
    .restart local v6       #nvp:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7
    const/4 p1, 0x0

    goto :goto_3

    .line 481
    :catch_0
    move-exception v0

    .line 482
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 p1, 0x0

    goto :goto_3
.end method

.method protected static initAudioEffectMap(Landroid/content/res/Resources;)V
    .locals 6
    .parameter "res"

    .prologue
    .line 395
    const/high16 v3, 0x7f05

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 396
    .local v1, key:[Ljava/lang/CharSequence;
    const v3, 0x7f050001

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 397
    .local v2, value:[Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    array-length v3, v1

    array-length v4, v2

    if-ne v3, v4, :cond_0

    .line 398
    sget-object v3, Lcom/android/thememanager/ThemeHelper;->sAudioEffectMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 399
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 400
    sget-object v3, Lcom/android/thememanager/ThemeHelper;->sAudioEffectMap:Ljava/util/HashMap;

    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aget-object v5, v2, v0

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    sget-object v3, Lcom/android/thememanager/ThemeHelper;->sAudioEffectOrder:Ljava/util/ArrayList;

    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 404
    .end local v0           #i:I
    :cond_0
    return-void
.end method

.method protected static initPlatformSupport(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 346
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 348
    .local v2, res:Landroid/content/res/Resources;
    const/high16 v3, 0x7f08

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    sput-boolean v3, Lcom/android/thememanager/ThemeHelper;->sPlatformSupportReplaceFont:Z

    .line 350
    const v3, 0x7f050002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 351
    .local v1, packageName:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 352
    sget-object v3, Lcom/android/thememanager/ThemeHelper;->sDisablePackagesReplaceSet:Ljava/util/HashSet;

    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 351
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 354
    :cond_0
    return-void
.end method

.method static initResource(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 338
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/thememanager/ThemeHelper;->initAudioEffectMap(Landroid/content/res/Resources;)V

    .line 339
    invoke-static {p0}, Lcom/android/thememanager/ThemeHelper;->initPlatformSupport(Landroid/content/Context;)V

    .line 340
    return-void
.end method

.method public static isDisablePkgName(Ljava/lang/String;)Z
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 361
    sget-object v0, Lcom/android/thememanager/ThemeHelper;->sDisablePackagesReplaceSet:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isNewCompressedFormat(Ljava/lang/String;)Z
    .locals 9
    .parameter "themeZipFilePath"

    .prologue
    .line 652
    const/4 v3, 0x1

    .line 654
    .local v3, newFormat:Z
    :try_start_0
    new-instance v5, Ljava/util/zip/ZipFile;

    invoke-direct {v5, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 656
    .local v5, zipfile:Ljava/util/zip/ZipFile;
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 657
    .local v1, entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    const/4 v2, 0x0

    .line 658
    .local v2, entry:Ljava/util/zip/ZipEntry;
    const/4 v4, 0x0

    .line 659
    .local v4, path:Ljava/lang/String;
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 660
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #entry:Ljava/util/zip/ZipEntry;
    check-cast v2, Ljava/util/zip/ZipEntry;

    .line 661
    .restart local v2       #entry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 662
    invoke-static {v4}, Lcom/android/thememanager/ThemeHelper;->shouldCompressedComponent(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 663
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_1

    const/16 v6, 0x2f

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-lez v6, :cond_0

    .line 664
    :cond_1
    const/4 v3, 0x0

    .line 669
    :cond_2
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 675
    .end local v1           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/util/zip/ZipEntry;>;"
    .end local v2           #entry:Ljava/util/zip/ZipEntry;
    .end local v4           #path:Ljava/lang/String;
    .end local v5           #zipfile:Ljava/util/zip/ZipFile;
    :goto_0
    return v3

    .line 671
    :catch_0
    move-exception v0

    .line 672
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 673
    const-string v6, "ResourceBrowser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fail to call isNewCompressedFormat() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static matchThemeResource(JJ)Z
    .locals 7
    .parameter "resourceType"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 516
    and-long v3, p2, p0

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    move v0, v1

    .line 517
    .local v0, result:Z
    :goto_0
    if-nez v0, :cond_0

    const-wide/16 v3, 0x1

    cmp-long v3, p0, v3

    if-nez v3, :cond_0

    .line 522
    const-wide/32 v3, 0x3f8b8

    and-long/2addr v3, p2

    invoke-static {v3, v4}, Lcom/android/thememanager/ThemeHelper;->getComponentNumber(J)I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_2

    move v0, v1

    .line 524
    :cond_0
    :goto_1
    return v0

    .end local v0           #result:Z
    :cond_1
    move v0, v2

    .line 516
    goto :goto_0

    .restart local v0       #result:Z
    :cond_2
    move v0, v2

    .line 522
    goto :goto_1
.end method

.method public static moveThemeFileIntoLibrary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v10, -0x1

    .line 1195
    if-nez p1, :cond_1

    move-object p1, v4

    .line 1226
    :cond_0
    :goto_0
    return-object p1

    .line 1198
    :cond_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1199
    sget-object v0, Lcom/android/thememanager/ThemeHelper;->THEME_PATH:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1204
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 1205
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/android/thememanager/ThemeHelper;->THEME_PATH:Ljava/lang/String;

    invoke-direct {v0, v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 1210
    :goto_1
    new-instance v3, Ljava/io/File;

    const-string v7, "%s/%d_%s"

    const/4 v2, 0x3

    new-array v8, v2, [Ljava/lang/Object;

    sget-object v2, Lcom/android/thememanager/ThemeHelper;->THEME_PATH:Ljava/lang/String;

    aput-object v2, v8, v1

    const/4 v9, 0x1

    add-int/lit8 v2, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v9

    const/4 v0, 0x2

    aput-object v6, v8, v0

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1211
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v3

    .line 1213
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    const/16 v2, 0x1ff

    invoke-static {v1, v2, v10, v10}, Lmiui/os/ExtraFileUtils;->mkdirs(Ljava/io/File;III)Z

    .line 1216
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v4}, Lmiui/util/CommandLineUtils;->mv(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1217
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z

    .line 1220
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1221
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1222
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1223
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1224
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1226
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public static realFontChange(JLjava/lang/String;J)Z
    .locals 9
    .parameter "applyFlags"
    .parameter "themePath"
    .parameter "themeFlags"

    .prologue
    const-wide/16 v7, 0x10

    const-wide/16 v5, 0x0

    .line 369
    and-long v3, p0, v7

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    .line 370
    .local v1, ret:Z
    :goto_0
    if-eqz v1, :cond_1

    .line 371
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/system/theme/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "fonts"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 372
    .local v0, fontDir:Ljava/io/File;
    and-long v3, p3, v7

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    const-string v3, "/system/media/theme/default.mtz"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 374
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    .line 388
    .end local v0           #fontDir:Ljava/io/File;
    :cond_1
    :goto_1
    return v1

    .line 369
    .end local v1           #ret:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 375
    .restart local v0       #fontDir:Ljava/io/File;
    .restart local v1       #ret:Z
    :cond_3
    sget-object v3, Lcom/android/thememanager/ThemeHelper;->BACKUP_THEME_PATH:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 376
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 378
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipFile;

    sget-object v3, Lcom/android/thememanager/ThemeHelper;->BACKUP_THEME_PATH:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 379
    .local v2, zipfile:Ljava/util/zip/ZipFile;
    const-string v3, "fonts"

    invoke-virtual {v2, v3}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    if-nez v3, :cond_4

    .line 380
    const/4 v1, 0x0

    .line 382
    :cond_4
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 383
    .end local v2           #zipfile:Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public static saveLockWallpaper(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 8
    .parameter "context"
    .parameter "path"
    .parameter "uri"

    .prologue
    const/4 v7, -0x1

    .line 932
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/system/theme//lock_wallpaper"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v1

    .line 933
    .local v1, result:Z
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    move v2, v1

    .line 951
    .end local v1           #result:Z
    .end local p1
    .local v2, result:Z
    :goto_0
    return v2

    .line 938
    .end local v2           #result:Z
    .restart local v1       #result:Z
    .restart local p1
    :cond_0
    invoke-static {p0}, Lcom/android/thememanager/ThemeHelper;->getScreenDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 939
    .local v0, metrics:Landroid/util/DisplayMetrics;
    if-eqz p1, :cond_2

    new-instance v3, Lmiui/util/InputStreamLoader;

    invoke-direct {v3, p1}, Lmiui/util/InputStreamLoader;-><init>(Ljava/lang/String;)V

    :goto_1
    const-string v4, "/data/system/theme//lock_wallpaper"

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4, v5, v6}, Lmiui/util/ImageUtils;->saveBitmapToLocal(Lmiui/util/InputStreamLoader;Ljava/lang/String;II)Z

    move-result v1

    .line 943
    if-eqz v1, :cond_1

    .line 944
    const-string v3, "/data/system/theme//lock_wallpaper"

    const/16 v4, 0x1ff

    invoke-static {v3, v4, v7, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 945
    const-wide/16 v3, 0x4

    if-eqz p1, :cond_3

    .end local p1
    :goto_2
    const/4 v5, 0x0

    invoke-static {p0, v3, v4, p1, v5}, Lcom/android/thememanager/ThemeHelper;->saveUserPreferenceOnlyPath(Landroid/content/Context;JLjava/lang/String;Z)V

    :cond_1
    move v2, v1

    .line 951
    .end local v1           #result:Z
    .restart local v2       #result:Z
    goto :goto_0

    .line 939
    .end local v2           #result:Z
    .restart local v1       #result:Z
    .restart local p1
    :cond_2
    new-instance v3, Lmiui/util/InputStreamLoader;

    invoke-direct {v3, p0, p2}, Lmiui/util/InputStreamLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_1

    .line 945
    :cond_3
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2
.end method

.method public static saveUserPreference(Landroid/content/SharedPreferences$Editor;Lcom/android/thememanager/ThemeInfo;JZ)V
    .locals 3
    .parameter "edit"
    .parameter "info"
    .parameter "flag"
    .parameter "savePath"

    .prologue
    .line 852
    if-eqz p4, :cond_0

    .line 853
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "path-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/android/thememanager/ThemeInfo;->mPath:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 855
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "flags-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p1, Lcom/android/thememanager/ThemeInfo;->mFlags:J

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "title-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/android/thememanager/ThemeInfo;->mTitle:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 857
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "designer-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/android/thememanager/ThemeInfo;->mDesigner:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 858
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "author-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/android/thememanager/ThemeInfo;->mAuthor:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 859
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update_time-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 860
    return-void
.end method

.method public static saveUserPreference(Lcom/android/thememanager/ThemeInfo;JJZ)V
    .locals 10
    .parameter "info"
    .parameter "saveFlags"
    .parameter "clearFlags"
    .parameter "savePath"

    .prologue
    const/4 v6, 0x1

    const-wide/16 v8, 0x0

    .line 830
    iget-object v4, p0, Lcom/android/thememanager/ThemeInfo;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 831
    .local v3, pref:Landroid/content/SharedPreferences;
    monitor-enter v3

    .line 832
    :try_start_0
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 835
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-wide/16 v1, 0x1

    .local v1, flag:J
    :goto_0
    const-wide/32 v4, 0x20000

    cmp-long v4, v1, v4

    if-gtz v4, :cond_2

    .line 836
    and-long v4, v1, p1

    cmp-long v4, v4, v8

    if-eqz v4, :cond_1

    .line 837
    invoke-static {v0, p0, v1, v2, p5}, Lcom/android/thememanager/ThemeHelper;->saveUserPreference(Landroid/content/SharedPreferences$Editor;Lcom/android/thememanager/ThemeInfo;JZ)V

    .line 835
    :cond_0
    :goto_1
    shl-long/2addr v1, v6

    goto :goto_0

    .line 838
    :cond_1
    and-long v4, v1, p3

    cmp-long v4, v4, v8

    if-eqz v4, :cond_0

    .line 839
    invoke-static {v0, v1, v2}, Lcom/android/thememanager/ThemeHelper;->clearUserPreference(Landroid/content/SharedPreferences$Editor;J)V

    goto :goto_1

    .line 848
    .end local v0           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v1           #flag:J
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 843
    .restart local v0       #edit:Landroid/content/SharedPreferences$Editor;
    .restart local v1       #flag:J
    :cond_2
    or-long v4, p1, p3

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    cmp-long v4, v4, v8

    if-eqz v4, :cond_3

    .line 844
    const-wide/16 v4, -0x1

    const/4 v6, 0x1

    :try_start_1
    invoke-static {v0, p0, v4, v5, v6}, Lcom/android/thememanager/ThemeHelper;->saveUserPreference(Landroid/content/SharedPreferences$Editor;Lcom/android/thememanager/ThemeInfo;JZ)V

    .line 847
    :cond_3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 848
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 849
    return-void
.end method

.method public static saveUserPreferenceOnlyPath(Landroid/content/Context;JLjava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "flag"
    .parameter "path"

    .prologue
    .line 795
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/thememanager/ThemeHelper;->saveUserPreferenceOnlyPath(Landroid/content/Context;JLjava/lang/String;Z)V

    .line 796
    return-void
.end method

.method public static saveUserPreferenceOnlyPath(Landroid/content/Context;JLjava/lang/String;Z)V
    .locals 6
    .parameter "context"
    .parameter "flag"
    .parameter "path"
    .parameter "updateTitle"

    .prologue
    .line 798
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 799
    .local v1, pref:Landroid/content/SharedPreferences;
    monitor-enter v1

    .line 800
    :try_start_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 801
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const/4 v2, 0x0

    .line 802
    .local v2, title:Ljava/lang/String;
    if-nez p4, :cond_0

    .line 803
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "title-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 805
    :cond_0
    if-nez v2, :cond_1

    .line 806
    const v3, 0x7f09000b

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 808
    :cond_1
    invoke-static {v0, p1, p2}, Lcom/android/thememanager/ThemeHelper;->clearUserPreference(Landroid/content/SharedPreferences$Editor;J)V

    .line 809
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "path-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 810
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "title-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 811
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update_time-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 812
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 813
    monitor-exit v1

    .line 814
    return-void

    .line 813
    .end local v0           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v2           #title:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static sendThemeConfigurationChangeMsg(Landroid/content/Context;J)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const-wide/16 v8, 0x0

    .line 1076
    const-wide/32 v0, 0x30000

    and-long/2addr v0, p1

    cmp-long v0, v0, v8

    if-eqz v0, :cond_0

    .line 1077
    const-wide/16 v0, 0x4000

    or-long/2addr p1, v0

    .line 1079
    :cond_0
    const-wide/16 v0, 0x10

    and-long/2addr v0, p1

    cmp-long v0, v0, v8

    if-eqz v0, :cond_1

    .line 1080
    const-string v0, "root"

    const-string v1, "setprop debug.skia.free_cache %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lmiui/util/CommandLineUtils;->run(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1084
    :cond_1
    const-wide/32 v0, 0x10007899

    and-long/2addr v0, p1

    .line 1085
    cmp-long v2, v0, v8

    if-eqz v2, :cond_2

    .line 1087
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 1088
    iget-object v3, v2, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;

    invoke-virtual {v3, v0, v1}, Lmiui/content/res/ExtraConfiguration;->updateTheme(J)V

    .line 1089
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1093
    :cond_2
    :goto_0
    return-void

    .line 1090
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setMusicVolumeType(Landroid/app/Activity;J)V
    .locals 3
    .parameter "activity"
    .parameter "flag"

    .prologue
    .line 1057
    const/4 v0, -0x1

    .line 1058
    .local v0, playType:I
    const-wide/16 v1, 0x100

    cmp-long v1, p1, v1

    if-nez v1, :cond_1

    .line 1059
    const/4 v0, 0x2

    .line 1070
    :goto_0
    if-ltz v0, :cond_0

    .line 1071
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 1073
    :cond_0
    return-void

    .line 1060
    :cond_1
    const-wide/16 v1, 0x200

    cmp-long v1, p1, v1

    if-nez v1, :cond_2

    .line 1061
    const/4 v0, 0x5

    goto :goto_0

    .line 1062
    :cond_2
    const-wide/16 v1, 0x400

    cmp-long v1, p1, v1

    if-nez v1, :cond_3

    .line 1063
    const/4 v0, 0x4

    goto :goto_0

    .line 1064
    :cond_3
    const-wide/32 v1, 0x8000

    cmp-long v1, p1, v1

    if-nez v1, :cond_4

    .line 1065
    const/4 v0, 0x1

    goto :goto_0

    .line 1067
    :cond_4
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public static setRingtone(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "type"
    .parameter "path"

    .prologue
    .line 1031
    const/4 v2, 0x0

    .line 1032
    .local v2, uri:Landroid/net/Uri;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1033
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 1034
    invoke-static {p2, p1}, Landroid/media/ExtraRingtoneManager;->copyRingtone(Ljava/lang/String;I)V

    .line 1036
    :cond_0
    invoke-static {p0, p1, v2}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 1038
    const-wide/16 v0, 0x100

    .line 1039
    .local v0, flag:J
    packed-switch p1, :pswitch_data_0

    .line 1052
    :goto_0
    :pswitch_0
    invoke-static {p0, v0, v1, p2}, Lcom/android/thememanager/ThemeHelper;->saveUserPreferenceOnlyPath(Landroid/content/Context;JLjava/lang/String;)V

    .line 1053
    const/4 v3, 0x1

    return v3

    .line 1041
    :pswitch_1
    const-wide/16 v0, 0x100

    .line 1042
    goto :goto_0

    .line 1045
    :pswitch_2
    const-wide/16 v0, 0x200

    .line 1046
    goto :goto_0

    .line 1049
    :pswitch_3
    const-wide/16 v0, 0x400

    goto :goto_0

    .line 1039
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static shouldCompressedComponent(Ljava/lang/String;)Z
    .locals 5
    .parameter "zipEntryPath"

    .prologue
    .line 643
    sget-object v0, Lcom/android/thememanager/ThemeHelper;->sUnCompressedComponent:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 644
    .local v3, tmp:Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 645
    const/4 v4, 0x0

    .line 648
    .end local v3           #tmp:Ljava/lang/String;
    :goto_1
    return v4

    .line 643
    .restart local v3       #tmp:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 648
    .end local v3           #tmp:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public static showThemeChangedToast(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "result"

    .prologue
    .line 967
    if-eqz p1, :cond_0

    const v1, 0x7f090003

    :goto_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 969
    .local v0, text:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 970
    return-void

    .line 967
    .end local v0           #text:Ljava/lang/String;
    :cond_0
    const v1, 0x7f090004

    goto :goto_0
.end method

.method public static supportReplaceAudioEffect()Z
    .locals 1

    .prologue
    .line 365
    const/4 v0, 0x0

    return v0
.end method

.method public static supportReplaceFont()Z
    .locals 1

    .prologue
    .line 357
    sget-boolean v0, Lcom/android/thememanager/ThemeHelper;->sPlatformSupportReplaceFont:Z

    return v0
.end method

.method public static updateUserPreferenceModifyTime(Landroid/content/Context;JJ)V
    .locals 8
    .parameter "context"
    .parameter "saveFlags"
    .parameter "modifyTime"

    .prologue
    .line 817
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 818
    .local v3, pref:Landroid/content/SharedPreferences;
    monitor-enter v3

    .line 819
    :try_start_0
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 820
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-wide/16 v1, 0x1

    .local v1, flag:J
    :goto_0
    const-wide/32 v4, 0x20000

    cmp-long v4, v1, v4

    if-gtz v4, :cond_1

    .line 821
    and-long v4, v1, p1

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 822
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update_time-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 820
    :cond_0
    const/4 v4, 0x1

    shl-long/2addr v1, v4

    goto :goto_0

    .line 825
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 826
    monitor-exit v3

    .line 827
    return-void

    .line 826
    .end local v0           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v1           #flag:J
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public static wallpaperPrefOlderThanSystem(Landroid/content/Context;J)Z
    .locals 1
    .parameter "context"
    .parameter "wallpaperFlag"

    .prologue
    .line 766
    const/4 v0, 0x1

    return v0
.end method
