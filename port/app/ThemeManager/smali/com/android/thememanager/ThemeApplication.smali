.class public Lcom/android/thememanager/ThemeApplication;
.super Landroid/app/Application;
.source "ThemeApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 6

    .prologue
    .line 14
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 16
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/theme/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 17
    const-string v1, "/data/system/theme/"

    const-string v2, "root"

    invoke-static {v1, v2}, Lmiui/util/CommandLineUtils;->mkdir(Ljava/lang/String;Ljava/lang/String;)Z

    .line 18
    const-string v1, "/data/system/theme/"

    const-string v2, "radio"

    const-string v3, "radio"

    const-string v4, "root"

    invoke-static {v1, v2, v3, v4}, Lmiui/util/CommandLineUtils;->chown(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 21
    :cond_0
    invoke-static {}, Lcom/android/thememanager/OnlineThemeJsonParser;->initDefaultParser()V

    .line 23
    invoke-static {p0}, Lcom/android/thememanager/ThemeHelper;->initResource(Landroid/content/Context;)V

    .line 25
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/thememanager/ThemeApplication;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RestoreFromBackup"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .local v0, backupFlagFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 27
    invoke-virtual {p0}, Lcom/android/thememanager/ThemeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/thememanager/ThemeHelper;->updateUserPreferenceModifyTime(Landroid/content/Context;JJ)V

    .line 28
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 30
    :cond_1
    return-void
.end method
