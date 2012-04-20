.class final Lcom/miui/home/launcher/LauncherModel$3;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;JJIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$item:Lcom/miui/home/launcher/ItemInfo;

.field final synthetic val$reload:Z

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 347
    const-class v0, Lcom/miui/home/launcher/LauncherModel;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/miui/home/launcher/LauncherModel$3;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/ContentResolver;Landroid/content/ContentValues;Lcom/miui/home/launcher/ItemInfo;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 347
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherModel$3;->val$cr:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/miui/home/launcher/LauncherModel$3;->val$values:Landroid/content/ContentValues;

    iput-object p3, p0, Lcom/miui/home/launcher/LauncherModel$3;->val$item:Lcom/miui/home/launcher/ItemInfo;

    iput-boolean p4, p0, Lcom/miui/home/launcher/LauncherModel$3;->val$reload:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 349
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$3;->val$cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/miui/home/launcher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/miui/home/launcher/LauncherModel$3;->val$values:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    .line 350
    .local v7, result:Landroid/net/Uri;
    if-eqz v7, :cond_2

    .line 351
    sget-boolean v0, Lcom/miui/home/launcher/LauncherModel$3;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$3;->val$item:Lcom/miui/home/launcher/ItemInfo;

    iget-wide v1, v0, Lcom/miui/home/launcher/ItemInfo;->id:J

    invoke-virtual {v7}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v4, v0

    cmp-long v0, v1, v4

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 352
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/LauncherModel$3;->val$reload:Z

    if-eqz v0, :cond_2

    .line 353
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$3;->val$cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherModel$3;->val$item:Lcom/miui/home/launcher/ItemInfo;

    iget-wide v1, v1, Lcom/miui/home/launcher/ItemInfo;->id:J

    invoke-static {v1, v2}, Lcom/miui/home/launcher/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/miui/home/launcher/ItemQuery;->COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 354
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 356
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherModel$3;->val$item:Lcom/miui/home/launcher/ItemInfo;

    invoke-virtual {v0, v6}, Lcom/miui/home/launcher/ItemInfo;->load(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 365
    .end local v6           #c:Landroid/database/Cursor;
    :cond_2
    return-void

    .line 360
    .restart local v6       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method
