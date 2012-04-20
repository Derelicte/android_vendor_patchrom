.class public Lcom/miui/backup/Customization;
.super Ljava/lang/Object;
.source "Customization.java"


# static fields
.field public static final APP_BASE_DIR:Ljava/io/File;

.field public static final APP_MIGRATE_FILE:Ljava/io/File;

.field public static final APP_NO_MEDIA_FILE:Ljava/io/File;

.field public static final BACKUP_BASE_DIR:Ljava/io/File;

.field public static final CLOUD_ACCOUNT_DATA:[Lcom/miui/backup/SystemData;

.field public static final CLOUD_SIM_DATA:[Lcom/miui/backup/SystemData;

.field public static final EXEC_FILE:Ljava/io/File;

.field public static final MIUI_BASE_DIR:Ljava/io/File;

.field public static final SYSTEM_DATA:[Lcom/miui/backup/SystemData;

.field public static final SYSTEM_PACKAGE:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 21
    invoke-static {}, Lmiui/os/Environment;->getMIUIExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/miui/backup/Customization;->MIUI_BASE_DIR:Ljava/io/File;

    .line 23
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/miui/backup/Customization;->MIUI_BASE_DIR:Ljava/io/File;

    const-string v2, "backup"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/backup/Customization;->APP_BASE_DIR:Ljava/io/File;

    .line 25
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/miui/backup/Customization;->APP_BASE_DIR:Ljava/io/File;

    const-string v2, "AllBackup"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/backup/Customization;->BACKUP_BASE_DIR:Ljava/io/File;

    .line 27
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/miui/backup/Customization;->APP_BASE_DIR:Ljava/io/File;

    const-string v2, ".nomedia"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/backup/Customization;->APP_NO_MEDIA_FILE:Ljava/io/File;

    .line 29
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/miui/backup/Customization;->APP_BASE_DIR:Ljava/io/File;

    const-string v2, ".migrate"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/backup/Customization;->APP_MIGRATE_FILE:Ljava/io/File;

    .line 31
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.miui.backup"

    const-string v2, "exec.sh"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/backup/Customization;->EXEC_FILE:Ljava/io/File;

    .line 104
    new-array v0, v8, [Ljava/lang/String;

    const-string v1, "com.android.browser"

    aput-object v1, v0, v6

    const-string v1, "com.android.fileexplorer"

    aput-object v1, v0, v7

    sput-object v0, Lcom/miui/backup/Customization;->SYSTEM_PACKAGE:[Ljava/lang/String;

    .line 112
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/miui/backup/SystemData;

    new-instance v1, Lcom/miui/backup/SystemData;

    const-string v2, "ADDRESSBOOK"

    const-string v3, "addressbook.store"

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/backup/SystemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/miui/backup/SystemData;

    const-string v2, "CALLLOG"

    const-string v3, "calllog.store"

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/backup/SystemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/miui/backup/SystemData;

    const-string v2, "SMS"

    const-string v3, "sms.store"

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/backup/SystemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v8

    new-instance v1, Lcom/miui/backup/SystemData;

    const-string v2, "MMS"

    const-string v3, "mms.store"

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/backup/SystemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v9

    new-instance v1, Lcom/miui/backup/SystemData;

    const-string v2, "SETTING"

    const-string v3, "setting.store"

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/backup/SystemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v10

    const/4 v1, 0x5

    new-instance v2, Lcom/miui/backup/SystemData;

    const-string v3, "WIFI"

    const-string v4, "wpa_supplicant.conf"

    const-string v5, "/data/misc/wifi/wpa_supplicant.conf"

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/backup/SystemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/miui/backup/SystemData;

    const-string v3, "com.miui.home"

    const-string v4, "com.miui.home"

    const-string v5, "/data/data/com.miui.home"

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/backup/SystemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/miui/backup/SystemData;

    const-string v3, "com.android.deskclock"

    const-string v4, "deskclock.store"

    const-string v5, ""

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/backup/SystemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/miui/backup/SystemData;

    const-string v3, "NOTE"

    const-string v4, "note.store"

    const-string v5, ""

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/backup/SystemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/miui/backup/SystemData;

    const-string v3, "ANTISPAM"

    const-string v4, "antispam.store"

    const-string v5, ""

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/backup/SystemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/miui/backup/SystemData;

    const-string v3, "ACCOUNT"

    const-string v4, "accounts.db"

    const-string v5, "/data/system/accounts.db"

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/backup/SystemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/backup/Customization;->SYSTEM_DATA:[Lcom/miui/backup/SystemData;

    .line 126
    new-array v0, v9, [Lcom/miui/backup/SystemData;

    new-instance v1, Lcom/miui/backup/SystemData;

    const-string v2, "ADDRESSBOOK"

    const-string v3, "addressbook.store"

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/miui/backup/SystemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/miui/backup/SystemData;

    const-string v2, "WIFI"

    const-string v3, "wpa_supplicant.conf"

    const-string v4, "/data/misc/wifi/wpa_supplicant.conf"

    invoke-direct {v1, v2, v3, v4, v9}, Lcom/miui/backup/SystemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/miui/backup/SystemData;

    const-string v2, "NOTE"

    const-string v3, "note.store"

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4, v10}, Lcom/miui/backup/SystemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v1, v0, v8

    sput-object v0, Lcom/miui/backup/Customization;->CLOUD_ACCOUNT_DATA:[Lcom/miui/backup/SystemData;

    .line 132
    new-array v0, v8, [Lcom/miui/backup/SystemData;

    new-instance v1, Lcom/miui/backup/SystemData;

    const-string v2, "CALLLOG"

    const-string v3, "calllog.store"

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4, v7}, Lcom/miui/backup/SystemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/miui/backup/SystemData;

    const-string v2, "SMS"

    const-string v3, "sms.store"

    const-string v4, ""

    invoke-direct {v1, v2, v3, v4, v8}, Lcom/miui/backup/SystemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v1, v0, v7

    sput-object v0, Lcom/miui/backup/Customization;->CLOUD_SIM_DATA:[Lcom/miui/backup/SystemData;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
