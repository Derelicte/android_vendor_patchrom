.class public Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;
.super Ljava/lang/Object;
.source "ConfigableGadget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/gadget/ConfigableGadget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BackupManager"
.end annotation


# instance fields
.field private final mGadgetId:I

.field private final mSpanX:I

.field private final mSpanY:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "gadgetId"

    .prologue
    const/4 v0, 0x0

    .line 163
    invoke-direct {p0, p1, v0, v0}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;-><init>(III)V

    .line 164
    return-void
.end method

.method public constructor <init>(III)V
    .locals 2
    .parameter "gadgetId"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput p1, p0, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->mGadgetId:I

    .line 168
    if-lez p2, :cond_0

    if-lez p3, :cond_0

    .line 169
    iput p2, p0, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->mSpanX:I

    .line 170
    iput p3, p0, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->mSpanY:I

    .line 176
    :goto_0
    return-void

    .line 172
    :cond_0
    invoke-static {p1}, Lcom/miui/home/launcher/gadget/GadgetFactory;->getInfo(I)Lcom/miui/home/launcher/gadget/GadgetInfo;

    move-result-object v0

    .line 173
    .local v0, info:Lcom/miui/home/launcher/gadget/GadgetInfo;
    iget v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanX:I

    iput v1, p0, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->mSpanX:I

    .line 174
    iget v1, v0, Lcom/miui/home/launcher/gadget/GadgetInfo;->spanY:I

    iput v1, p0, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->mSpanY:I

    goto :goto_0
.end method


# virtual methods
.method public getBackupDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 252
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getBackupTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "bak"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, name:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 254
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getBackupName(J)Ljava/lang/String;
    .locals 2
    .parameter "itemId"

    .prologue
    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getBackupNamePrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBackupNamePrefix()Ljava/lang/String;
    .locals 4

    .prologue
    .line 200
    const-string v0, "%s%s_"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getBackupTypeName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getSizeDescript()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBackupPath(Landroid/content/Context;J)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "itemId"

    .prologue
    .line 214
    const-string v0, "%s/%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getBackupDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0, p2, p3}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getBackupName(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBackupTypeName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 228
    const/4 v0, 0x0

    .line 229
    .local v0, prefix:Ljava/lang/String;
    iget v1, p0, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->mGadgetId:I

    packed-switch v1, :pswitch_data_0

    .line 241
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Unknown gadget id %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->mGadgetId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 233
    :pswitch_0
    const-string v0, "clock_"

    .line 245
    :goto_0
    return-object v0

    .line 238
    :pswitch_1
    const-string v0, "photoframe_"

    .line 239
    goto :goto_0

    .line 229
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getEntryName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 221
    const-string v0, "%s%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getBackupTypeName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getSizeDescript()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPathInTheme()Ljava/lang/String;
    .locals 4

    .prologue
    .line 261
    const-string v0, "%s/%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "/data/system/theme/"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getEntryName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSizeDescript()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 182
    const/4 v0, 0x0

    .line 183
    .local v0, ret:Ljava/lang/String;
    iget v1, p0, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->mSpanY:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->mSpanX:I

    if-ne v1, v3, :cond_0

    .line 184
    const-string v0, "1x2"

    .line 193
    :goto_0
    return-object v0

    .line 185
    :cond_0
    iget v1, p0, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->mSpanY:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->mSpanX:I

    if-ne v1, v3, :cond_1

    .line 186
    const-string v0, "2x2"

    goto :goto_0

    .line 187
    :cond_1
    iget v1, p0, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->mSpanY:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->mSpanX:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 188
    const-string v0, "2x4"

    goto :goto_0

    .line 190
    :cond_2
    const-string v0, "4x4"

    goto :goto_0
.end method

.method public getSystemGadgetTheme()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 268
    const/4 v0, 0x0

    .line 269
    .local v0, typeName:Ljava/lang/String;
    iget v1, p0, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->mGadgetId:I

    packed-switch v1, :pswitch_data_0

    .line 281
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Unknown gadget id %d"

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->mGadgetId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 273
    :pswitch_0
    const-string v0, "clock"

    .line 285
    :goto_0
    const-string v1, "/system/media/theme/gadget/%s/%s_%s.mtz"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v5

    aput-object v0, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getSizeDescript()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 278
    :pswitch_1
    const-string v0, "photo_frame"

    .line 279
    goto :goto_0

    .line 269
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public prepareBackup(Landroid/content/Context;J)Z
    .locals 9
    .parameter "context"
    .parameter "itemId"

    .prologue
    const/4 v4, 0x1

    const/4 v8, -0x1

    .line 290
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getBackupPath(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    .line 291
    .local v3, dst:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 293
    .local v1, backup:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 313
    :goto_0
    return v4

    .line 298
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 299
    .local v2, dir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_1

    .line 300
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 303
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getPathInTheme()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/miui/home/launcher/gadget/Utils;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 304
    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getSystemGadgetTheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getEntryName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/miui/home/launcher/gadget/ConfigableGadget$BackupManager;->getSystemGadgetTheme()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v5, v6, v7}, Lcom/miui/home/launcher/gadget/Utils;->extract(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 307
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 308
    const/16 v0, 0x184

    .line 309
    .local v0, PERMISSIONS:I
    const/16 v5, 0x184

    invoke-static {v3, v5, v8, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    goto :goto_0

    .line 313
    .end local v0           #PERMISSIONS:I
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method
