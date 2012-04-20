.class public Lcom/miui/player/ui/FolderSelectDialog;
.super Landroid/preference/DialogPreference;
.source "FolderSelectDialog.java"


# instance fields
.field mFolderStatus:[Lcom/miui/player/util/FolderProvider$FolderStatus;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const v0, 0x7f030015

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/FolderSelectDialog;->setDialogLayoutResource(I)V

    .line 34
    return-void
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 3
    .parameter "positiveResult"

    .prologue
    .line 66
    if-eqz p1, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/miui/player/ui/FolderSelectDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 68
    .local v0, context:Landroid/content/Context;
    invoke-static {}, Lcom/miui/player/util/FolderProvider;->instance()Lcom/miui/player/util/FolderProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/player/ui/FolderSelectDialog;->mFolderStatus:[Lcom/miui/player/util/FolderProvider$FolderStatus;

    invoke-virtual {v1, v0, v2}, Lcom/miui/player/util/FolderProvider;->updateFolderItemSelected(Landroid/content/Context;[Lcom/miui/player/util/FolderProvider$FolderStatus;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    invoke-static {v0}, Lcom/miui/player/util/PlaylistRecoverer;->instance(Landroid/content/Context;)Lcom/miui/player/util/PlaylistRecoverer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/player/util/PlaylistRecoverer;->markForceRecover()V

    .line 73
    .end local v0           #context:Landroid/content/Context;
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 74
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 10
    .parameter "builder"

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 39
    const v8, 0x7f080020

    invoke-virtual {p1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 41
    invoke-static {}, Lcom/miui/player/util/FolderProvider;->instance()Lcom/miui/player/util/FolderProvider;

    move-result-object v8

    invoke-virtual {p0}, Lcom/miui/player/ui/FolderSelectDialog;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/miui/player/util/FolderProvider;->getAllFolderStatus(Landroid/content/Context;)[Lcom/miui/player/util/FolderProvider$FolderStatus;

    move-result-object v8

    iput-object v8, p0, Lcom/miui/player/ui/FolderSelectDialog;->mFolderStatus:[Lcom/miui/player/util/FolderProvider$FolderStatus;

    .line 42
    iget-object v2, p0, Lcom/miui/player/ui/FolderSelectDialog;->mFolderStatus:[Lcom/miui/player/util/FolderProvider$FolderStatus;

    .line 43
    .local v2, folders:[Lcom/miui/player/util/FolderProvider$FolderStatus;
    array-length v8, v2

    new-array v6, v8, [Ljava/lang/CharSequence;

    .line 44
    .local v6, names:[Ljava/lang/CharSequence;
    array-length v8, v2

    new-array v1, v8, [Z

    .line 45
    .local v1, checkedItems:[Z
    const/4 v3, 0x0

    .line 46
    .local v3, i:I
    move-object v0, v2

    .local v0, arr$:[Lcom/miui/player/util/FolderProvider$FolderStatus;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v7, v0, v4

    .line 47
    .local v7, status:Lcom/miui/player/util/FolderProvider$FolderStatus;
    iget-object v8, v7, Lcom/miui/player/util/FolderProvider$FolderStatus;->mFolderPath:Ljava/lang/String;

    invoke-static {v8}, Lcom/miui/player/ui/UIHelper;->getDisplayFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v3

    .line 48
    iget-boolean v8, v7, Lcom/miui/player/util/FolderProvider$FolderStatus;->mSelected:Z

    aput-boolean v8, v1, v3

    .line 49
    add-int/lit8 v3, v3, 0x1

    .line 46
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 52
    .end local v7           #status:Lcom/miui/player/util/FolderProvider$FolderStatus;
    :cond_0
    new-instance v8, Lcom/miui/player/ui/FolderSelectDialog$1;

    invoke-direct {v8, p0}, Lcom/miui/player/ui/FolderSelectDialog$1;-><init>(Lcom/miui/player/ui/FolderSelectDialog;)V

    invoke-virtual {p1, v6, v1, v8}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 62
    return-void
.end method
