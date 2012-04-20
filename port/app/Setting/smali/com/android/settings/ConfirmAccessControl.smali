.class public Lcom/android/settings/ConfirmAccessControl;
.super Lcom/android/settings/ConfirmLockPattern;
.source "ConfirmAccessControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;
    }
.end annotation


# instance fields
.field private mFragment:Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;

.field private mNoBack:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPattern;-><init>()V

    .line 86
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/ConfirmAccessControl;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/settings/ConfirmAccessControl;->mNoBack:Z

    return p1
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 68
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/ConfirmLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 69
    const-string v1, ":android:show_fragment"

    const-class v2, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 71
    return-object v0
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 0
    .parameter "fragment"

    .prologue
    .line 76
    check-cast p1, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;

    .end local p1
    iput-object p1, p0, Lcom/android/settings/ConfirmAccessControl;->mFragment:Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;

    .line 77
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/settings/ConfirmAccessControl;->mNoBack:Z

    if-nez v0, :cond_0

    .line 54
    invoke-super {p0}, Lcom/android/settings/ConfirmLockPattern;->onBackPressed()V

    .line 56
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/android/settings/ConfirmLockPattern;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/android/settings/ConfirmAccessControl;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 39
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 40
    const/16 v1, 0x8

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 44
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/android/settings/ConfirmLockPattern;->onNewIntent(Landroid/content/Intent;)V

    .line 82
    iget-object v0, p0, Lcom/android/settings/ConfirmAccessControl;->mFragment:Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;

    invoke-virtual {v0, p1}, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->parseIntent(Landroid/content/Intent;)V

    .line 83
    iget-object v0, p0, Lcom/android/settings/ConfirmAccessControl;->mFragment:Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;

    sget-object v1, Lcom/android/settings/ConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/settings/ConfirmLockPattern$Stage;

    invoke-virtual {v0, v1}, Lcom/android/settings/ConfirmAccessControl$ConfirmAccessControlFragment;->updateStage(Lcom/android/settings/ConfirmLockPattern$Stage;)V

    .line 84
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Lcom/android/settings/ConfirmLockPattern;->onStop()V

    .line 61
    iget-boolean v0, p0, Lcom/android/settings/ConfirmAccessControl;->mNoBack:Z

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/ConfirmAccessControl;->finish()V

    .line 64
    :cond_0
    return-void
.end method
