.class Lcom/android/thememanager/ThemeHelper$BackupThemeTask;
.super Landroid/os/AsyncTask;
.source "ThemeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/thememanager/ThemeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackupThemeTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mProgress:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 1115
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1116
    iput-object p1, p0, Lcom/android/thememanager/ThemeHelper$BackupThemeTask;->mContext:Landroid/content/Context;

    .line 1117
    return-void
.end method

.method private backupRingtone(Ljava/util/zip/ZipOutputStream;ILjava/lang/String;)V
    .locals 3
    .parameter "out"
    .parameter "type"
    .parameter "targetPath"

    .prologue
    .line 1129
    iget-object v2, p0, Lcom/android/thememanager/ThemeHelper$BackupThemeTask;->mContext:Landroid/content/Context;

    invoke-static {v2, p2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 1130
    .local v1, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/thememanager/ThemeHelper$BackupThemeTask;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lmiui/app/resourcebrowser/ResourceHelper;->getPathByUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1131
    .local v0, srcPath:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1132
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v2, p3}, Lcom/android/thememanager/Helper;->zip(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;)Z

    .line 1134
    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1110
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/thememanager/ThemeHelper$BackupThemeTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 11
    .parameter "object"

    .prologue
    const/4 v9, -0x1

    .line 1138
    new-instance v4, Ljava/io/File;

    sget-object v7, Lcom/android/thememanager/ThemeHelper;->BACKUP_PATH:Ljava/lang/String;

    const-string v8, "backup.mtz1"

    invoke-direct {v4, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    .local v4, file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 1140
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    const/16 v8, 0x1ff

    invoke-static {v7, v8, v9, v9}, Lmiui/os/ExtraFileUtils;->mkdirs(Ljava/io/File;III)Z

    .line 1143
    :try_start_0
    const-string v7, "%s/description.xml"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/thememanager/ThemeHelper$BackupThemeTask;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1144
    .local v0, descriptionPath:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/thememanager/ThemeHelper$BackupThemeTask;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/high16 v8, 0x7f04

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v7

    invoke-static {v7, v0}, Lmiui/app/resourcebrowser/ResourceHelper;->writeTo(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1148
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1149
    .local v3, f:Ljava/io/FileOutputStream;
    new-instance v5, Ljava/util/zip/ZipOutputStream;

    new-instance v7, Ljava/io/BufferedOutputStream;

    const/16 v8, 0x2000

    invoke-direct {v7, v3, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v5, v7}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1150
    .local v5, out:Ljava/util/zip/ZipOutputStream;
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/zip/ZipOutputStream;->setMethod(I)V

    .line 1152
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v8, "description.xml"

    invoke-static {v5, v7, v8}, Lcom/android/thememanager/Helper;->zip(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;)Z

    .line 1154
    const-string v1, "/data/system/theme/desk_wallpaper.tmp"

    .line 1155
    .local v1, deskWallpaperTmpPath:Ljava/lang/String;
    const-string v7, "/data/data/com.android.settings/files/wallpaper"

    const-string v8, "root"

    invoke-static {v7, v1, v8}, Lmiui/util/CommandLineUtils;->cp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1156
    const-string v7, "777"

    const-string v8, "root"

    invoke-static {v1, v7, v8}, Lmiui/util/CommandLineUtils;->chmod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1157
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v8, "wallpaper/default_wallpaper.jpg"

    invoke-static {v5, v7, v8}, Lcom/android/thememanager/Helper;->zip(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;)Z

    .line 1158
    const-string v7, "root"

    invoke-static {v1, v7}, Lmiui/util/CommandLineUtils;->rm(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1160
    new-instance v7, Ljava/io/File;

    const-string v8, "/data/system/theme//lock_wallpaper"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v8, "wallpaper/default_lock_wallpaper.jpg"

    invoke-static {v5, v7, v8}, Lcom/android/thememanager/Helper;->zip(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;)Z

    .line 1162
    const/4 v7, 0x1

    const-string v8, "ringtones/ringtone.mp3"

    invoke-direct {p0, v5, v7, v8}, Lcom/android/thememanager/ThemeHelper$BackupThemeTask;->backupRingtone(Ljava/util/zip/ZipOutputStream;ILjava/lang/String;)V

    .line 1163
    const/4 v7, 0x2

    const-string v8, "ringtones/notification.mp3"

    invoke-direct {p0, v5, v7, v8}, Lcom/android/thememanager/ThemeHelper$BackupThemeTask;->backupRingtone(Ljava/util/zip/ZipOutputStream;ILjava/lang/String;)V

    .line 1164
    const/4 v7, 0x4

    const-string v8, "ringtones/alarm.mp3"

    invoke-direct {p0, v5, v7, v8}, Lcom/android/thememanager/ThemeHelper$BackupThemeTask;->backupRingtone(Ljava/util/zip/ZipOutputStream;ILjava/lang/String;)V

    .line 1166
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/data/system/theme/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "audioeffect"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1167
    new-instance v7, Ljava/io/File;

    const-string v8, "/system/media/audio/ui"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v8, "audioeffect"

    invoke-static {v5, v7, v8}, Lcom/android/thememanager/Helper;->zip(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;)Z

    .line 1170
    :cond_0
    new-instance v7, Ljava/io/File;

    const-string v8, "/data/system/theme/"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v8, ""

    invoke-static {v5, v7, v8}, Lcom/android/thememanager/Helper;->zip(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;)Z

    .line 1171
    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 1173
    new-instance v6, Ljava/io/File;

    sget-object v7, Lcom/android/thememanager/ThemeHelper;->BACKUP_THEME_PATH:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1174
    .local v6, target:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 1175
    invoke-virtual {v4, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1180
    const/4 v7, 0x0

    return-object v7

    .line 1176
    .end local v0           #descriptionPath:Ljava/lang/String;
    .end local v1           #deskWallpaperTmpPath:Ljava/lang/String;
    .end local v3           #f:Ljava/io/FileOutputStream;
    .end local v5           #out:Ljava/util/zip/ZipOutputStream;
    .end local v6           #target:Ljava/io/File;
    :catch_0
    move-exception v2

    .line 1177
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1178
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7}, Ljava/lang/RuntimeException;-><init>()V

    throw v7
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1110
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/thememanager/ThemeHelper$BackupThemeTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .parameter "object"

    .prologue
    .line 1185
    iget-object v0, p0, Lcom/android/thememanager/ThemeHelper$BackupThemeTask;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1186
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/thememanager/ThemeHelper$BackupThemeTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090009

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1191
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 1121
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/thememanager/ThemeHelper$BackupThemeTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/thememanager/ThemeHelper$BackupThemeTask;->mProgress:Landroid/app/ProgressDialog;

    .line 1122
    iget-object v0, p0, Lcom/android/thememanager/ThemeHelper$BackupThemeTask;->mProgress:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1123
    iget-object v0, p0, Lcom/android/thememanager/ThemeHelper$BackupThemeTask;->mProgress:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/thememanager/ThemeHelper$BackupThemeTask;->mContext:Landroid/content/Context;

    const v2, 0x7f090008

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1124
    iget-object v0, p0, Lcom/android/thememanager/ThemeHelper$BackupThemeTask;->mProgress:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1125
    iget-object v0, p0, Lcom/android/thememanager/ThemeHelper$BackupThemeTask;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1126
    return-void
.end method
