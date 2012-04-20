.class public Lcom/miui/milk/ui/AutoBackupPreference;
.super Landroid/app/Activity;
.source "AutoBackupPreference.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 12
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    invoke-virtual {p0}, Lcom/miui/milk/ui/AutoBackupPreference;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 14
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 15
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 18
    :cond_0
    new-instance v1, Lcom/miui/milk/ui/AutoBackupFragment;

    invoke-direct {v1}, Lcom/miui/milk/ui/AutoBackupFragment;-><init>()V

    .line 19
    .local v1, f:Lcom/miui/milk/ui/AutoBackupFragment;
    invoke-virtual {p0}, Lcom/miui/milk/ui/AutoBackupPreference;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 20
    .local v2, transaction:Landroid/app/FragmentTransaction;
    const/16 v3, 0x1003

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 21
    const v3, 0x1020002

    invoke-virtual {v2, v3, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 22
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 26
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 28
    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/milk/ui/AutoBackupPreference;->finish()V

    .line 29
    const/4 v0, 0x1

    goto :goto_0

    .line 26
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
