.class public Lcom/android/updater/ExportDataToSDCardActivity;
.super Landroid/app/Activity;
.source "ExportDataToSDCardActivity.java"


# static fields
.field private static sFoldersNeededRename:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 106
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/updater/ExportDataToSDCardActivity;->sFoldersNeededRename:Ljava/util/HashSet;

    .line 108
    sget-object v0, Lcom/android/updater/ExportDataToSDCardActivity;->sFoldersNeededRename:Ljava/util/HashSet;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmiui/os/Environment;->getInternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DCIM/Camera"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v0, Lcom/android/updater/ExportDataToSDCardActivity;->sFoldersNeededRename:Ljava/util/HashSet;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmiui/os/Environment;->getInternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/MIUI/rec"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object v0, Lcom/android/updater/ExportDataToSDCardActivity;->sFoldersNeededRename:Ljava/util/HashSet;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmiui/os/Environment;->getInternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/MIUI/sound_recorder"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 111
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/io/File;Ljava/io/File;ZLandroid/app/ProgressDialog;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 21
    invoke-static {p0, p1, p2, p3}, Lcom/android/updater/ExportDataToSDCardActivity;->moveData(Ljava/io/File;Ljava/io/File;ZLandroid/app/ProgressDialog;)V

    return-void
.end method

.method private static getFolderSize(Ljava/lang/String;)I
    .locals 8
    .parameter "path"

    .prologue
    .line 176
    const/4 v2, 0x0

    .line 178
    .local v2, result:I
    const/4 v3, 0x0

    :try_start_0
    const-string v4, "busybox du -s %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p0}, Lmiui/util/CommandLineUtils;->addQuoteMark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lmiui/util/CommandLineUtils;->runAndOutput(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v1

    .line 180
    .local v1, input:Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 181
    const/16 v3, 0x800

    new-array v0, v3, [B

    .line 182
    .local v0, data:[B
    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v1, v0, v3, v4}, Ljava/io/InputStream;->read([BII)I

    .line 183
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    const-string v4, "[^0-9]"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 184
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .end local v0           #data:[B
    .end local v1           #input:Ljava/io/InputStream;
    :cond_0
    :goto_0
    return v2

    .line 186
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private static moveData(Ljava/io/File;Ljava/io/File;ZLandroid/app/ProgressDialog;)V
    .locals 11
    .parameter "src"
    .parameter "dst"
    .parameter "rename"
    .parameter "progress"

    .prologue
    const/4 v10, 0x0

    .line 114
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    const/4 v5, 0x0

    .line 117
    .local v5, size:I
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 118
    if-eqz p2, :cond_2

    .line 119
    invoke-static {p1}, Lcom/android/updater/ExportDataToSDCardActivity;->validateFileName(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    .line 122
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-float v6, v6

    const/high16 v7, 0x4480

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 123
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_3

    .line 124
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 149
    :goto_1
    if-lez v5, :cond_0

    .line 150
    invoke-virtual {p3}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {p3, v6}, Landroid/app/ProgressDialog;->setProgress(I)V

    goto :goto_0

    .line 128
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v10}, Lmiui/util/CommandLineUtils;->mv(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 131
    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 132
    if-nez p2, :cond_5

    sget-object v6, Lcom/android/updater/ExportDataToSDCardActivity;->sFoldersNeededRename:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    const/4 p2, 0x1

    .line 134
    :goto_2
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 135
    .local v4, list:[Ljava/io/File;
    if-eqz v4, :cond_7

    .line 136
    move-object v0, v4

    .local v0, arr$:[Ljava/io/File;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_3
    if-ge v2, v3, :cond_7

    aget-object v1, v0, v2

    .line 137
    .local v1, file:Ljava/io/File;
    new-instance v6, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1, v6, p2, p3}, Lcom/android/updater/ExportDataToSDCardActivity;->moveData(Ljava/io/File;Ljava/io/File;ZLandroid/app/ProgressDialog;)V

    .line 136
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 132
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #file:Ljava/io/File;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #list:[Ljava/io/File;
    :cond_6
    const/4 p2, 0x0

    goto :goto_2

    .line 140
    .restart local v4       #list:[Ljava/io/File;
    :cond_7
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 143
    .end local v4           #list:[Ljava/io/File;
    :cond_8
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/updater/ExportDataToSDCardActivity;->getFolderSize(Ljava/lang/String;)I

    move-result v5

    .line 145
    invoke-static {p1}, Lcom/android/updater/ExportDataToSDCardActivity;->validateFileName(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    .line 146
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v10}, Lmiui/util/CommandLineUtils;->mv(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1
.end method

.method private moveInternalDataToSDCard()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x400

    const/4 v3, 0x0

    .line 34
    new-instance v11, Landroid/os/StatFs;

    invoke-static {}, Lmiui/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v11, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 35
    .local v11, stat:Landroid/os/StatFs;
    invoke-virtual {v11}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v11}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v1, v4

    div-long v8, v1, v12

    .line 36
    .local v8, availableSize:J
    invoke-static {}, Lmiui/os/Environment;->getInternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/updater/ExportDataToSDCardActivity;->getFolderSize(Ljava/lang/String;)I

    move-result v1

    int-to-long v6, v1

    .line 38
    .local v6, requiredSize:J
    add-long v1, v6, v12

    cmp-long v1, v8, v1

    if-gez v1, :cond_0

    .line 40
    const v1, 0x7f050056

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    div-long v4, v6, v12

    const-wide/16 v12, 0x1

    add-long/2addr v4, v12

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/updater/ExportDataToSDCardActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 44
    .local v10, message:Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f050055

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 104
    .end local v10           #message:Ljava/lang/String;
    :goto_0
    return-void

    .line 52
    :cond_0
    new-instance v0, Lcom/android/updater/ExportDataToSDCardActivity$1;

    const v4, 0x7f050057

    move-object v1, p0

    move-object v2, p0

    move v5, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/updater/ExportDataToSDCardActivity$1;-><init>(Lcom/android/updater/ExportDataToSDCardActivity;Landroid/content/Context;IIZJ)V

    .line 102
    .local v0, task:Lmiui/os/AsyncTaskWithProgress;,"Lmiui/os/AsyncTaskWithProgress<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lmiui/os/AsyncTaskWithProgress;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private static validateFileName(Ljava/io/File;)Ljava/io/File;
    .locals 11
    .parameter "file"

    .prologue
    const/4 v10, 0x0

    .line 155
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 172
    .end local p0
    :goto_0
    return-object p0

    .line 157
    .restart local p0
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, folderPath:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 159
    .local v4, name:Ljava/lang/String;
    const-string v0, ""

    .line 161
    .local v0, ext:Ljava/lang/String;
    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 162
    .local v3, lastDot:I
    if-lez v3, :cond_1

    .line 163
    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-virtual {v4, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 167
    :cond_1
    const/4 v5, 0x0

    .line 168
    .local v5, result:Ljava/io/File;
    const/4 v2, 0x0

    .line 170
    .local v2, index:I
    :cond_2
    new-instance v5, Ljava/io/File;

    .end local v5           #result:Ljava/io/File;
    const-string v6, "%s_%d%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v10

    const/4 v8, 0x1

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    aput-object v0, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .restart local v5       #result:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    move-object p0, v5

    .line 172
    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/updater/ExportDataToSDCardActivity;->requestWindowFeature(I)Z

    .line 26
    invoke-virtual {p0}, Lcom/android/updater/ExportDataToSDCardActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 27
    invoke-virtual {p0}, Lcom/android/updater/ExportDataToSDCardActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 29
    invoke-direct {p0}, Lcom/android/updater/ExportDataToSDCardActivity;->moveInternalDataToSDCard()V

    .line 30
    return-void
.end method
