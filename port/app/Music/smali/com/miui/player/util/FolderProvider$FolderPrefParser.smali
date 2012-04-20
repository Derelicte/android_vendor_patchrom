.class Lcom/miui/player/util/FolderProvider$FolderPrefParser;
.super Ljava/lang/Object;
.source "FolderProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/util/FolderProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FolderPrefParser"
.end annotation


# instance fields
.field private mLastJson:Ljava/lang/String;

.field private mUnselectedFolderSet:Ljava/lang/String;

.field private mUnselectedFolders:[Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    iput-object v0, p0, Lcom/miui/player/util/FolderProvider$FolderPrefParser;->mLastJson:Ljava/lang/String;

    .line 330
    iput-object v0, p0, Lcom/miui/player/util/FolderProvider$FolderPrefParser;->mUnselectedFolders:[Ljava/lang/String;

    .line 331
    iput-object v0, p0, Lcom/miui/player/util/FolderProvider$FolderPrefParser;->mUnselectedFolderSet:Ljava/lang/String;

    return-void
.end method

.method private update(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 334
    const-string v3, "filter_music_folder"

    invoke-static {p1, v3}, Lcom/miui/player/util/PreferenceCache;->getPrefAsString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, current:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 336
    sget-object v3, Lcom/miui/player/util/FolderProvider;->EMPTY_FOLDER:[Ljava/lang/String;

    iput-object v3, p0, Lcom/miui/player/util/FolderProvider$FolderPrefParser;->mUnselectedFolders:[Ljava/lang/String;

    .line 337
    iput-object v2, p0, Lcom/miui/player/util/FolderProvider$FolderPrefParser;->mUnselectedFolderSet:Ljava/lang/String;

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    iget-object v3, p0, Lcom/miui/player/util/FolderProvider$FolderPrefParser;->mLastJson:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 345
    iput-object v0, p0, Lcom/miui/player/util/FolderProvider$FolderPrefParser;->mLastJson:Ljava/lang/String;

    .line 346
    invoke-static {v0}, Lcom/miui/player/util/FolderProvider;->parseUnselectedFolders(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/player/util/FolderProvider$FolderPrefParser;->mUnselectedFolders:[Ljava/lang/String;

    .line 347
    iget-object v3, p0, Lcom/miui/player/util/FolderProvider$FolderPrefParser;->mUnselectedFolders:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v4, "_data"

    invoke-static {v3, v4}, Lcom/miui/player/util/SqlUtils;->pathLikeWhere(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 350
    .local v1, like:Ljava/lang/String;
    if-eqz v1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " NOT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    iput-object v2, p0, Lcom/miui/player/util/FolderProvider$FolderPrefParser;->mUnselectedFolderSet:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getUnselectedFolders(Landroid/content/Context;)[Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 354
    invoke-direct {p0, p1}, Lcom/miui/player/util/FolderProvider$FolderPrefParser;->update(Landroid/content/Context;)V

    .line 355
    iget-object v0, p0, Lcom/miui/player/util/FolderProvider$FolderPrefParser;->mUnselectedFolders:[Ljava/lang/String;

    return-object v0
.end method

.method public getUnselectedFoldersAsSet(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 359
    invoke-direct {p0, p1}, Lcom/miui/player/util/FolderProvider$FolderPrefParser;->update(Landroid/content/Context;)V

    .line 360
    iget-object v0, p0, Lcom/miui/player/util/FolderProvider$FolderPrefParser;->mUnselectedFolderSet:Ljava/lang/String;

    return-object v0
.end method
