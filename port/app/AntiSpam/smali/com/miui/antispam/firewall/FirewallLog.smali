.class public Lcom/miui/antispam/firewall/FirewallLog;
.super Landroid/app/Activity;
.source "FirewallLog.java"


# instance fields
.field private mFragment:Lcom/miui/antispam/firewall/FirewallLogFragment;

.field private mQueryTarget:I


# direct methods
.method protected constructor <init>(I)V
    .locals 0
    .parameter "queryTarget"

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 14
    iput p1, p0, Lcom/miui/antispam/firewall/FirewallLog;->mQueryTarget:I

    .line 15
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcom/miui/antispam/firewall/FirewallLog;->setContentView(I)V

    .line 22
    new-instance v0, Lcom/miui/antispam/firewall/FirewallLogFragment;

    iget v1, p0, Lcom/miui/antispam/firewall/FirewallLog;->mQueryTarget:I

    invoke-direct {v0, v1}, Lcom/miui/antispam/firewall/FirewallLogFragment;-><init>(I)V

    iput-object v0, p0, Lcom/miui/antispam/firewall/FirewallLog;->mFragment:Lcom/miui/antispam/firewall/FirewallLogFragment;

    .line 23
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/FirewallLog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f08000d

    iget-object v2, p0, Lcom/miui/antispam/firewall/FirewallLog;->mFragment:Lcom/miui/antispam/firewall/FirewallLogFragment;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 27
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/FirewallLog;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 28
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/FirewallLog;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 29
    invoke-virtual {p0}, Lcom/miui/antispam/firewall/FirewallLog;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f030014

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 30
    return-void
.end method
