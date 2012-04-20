.class public Lcom/miui/player/ui/ConnChangedHintActivity;
.super Landroid/app/Activity;
.source "ConnChangedHintActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/4 v7, 0x0

    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0}, Lcom/miui/player/ui/ConnChangedHintActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const v6, 0x106000d

    invoke-virtual {v5, v6}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 24
    invoke-virtual {p0}, Lcom/miui/player/ui/ConnChangedHintActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "is_online_allow"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 25
    .local v2, isAllowOnline:Z
    if-eqz v2, :cond_0

    const v3, 0x7f08006e

    .line 28
    .local v3, msgId:I
    :goto_0
    invoke-virtual {p0}, Lcom/miui/player/ui/ConnChangedHintActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 29
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f03000f

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 30
    .local v4, view:Landroid/view/View;
    const v5, 0x7f0c003b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(I)V

    .line 31
    const v5, 0x7f0c003c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 32
    .local v0, checkBox:Landroid/widget/CheckBox;
    const-string v5, "flow_save_hint"

    invoke-static {p0, v5}, Lcom/miui/player/util/PreferenceCache;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 33
    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 37
    :goto_1
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x1080027

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f08001a

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f08006d

    new-instance v7, Lcom/miui/player/ui/ConnChangedHintActivity$2;

    invoke-direct {v7, p0, v0}, Lcom/miui/player/ui/ConnChangedHintActivity$2;-><init>(Lcom/miui/player/ui/ConnChangedHintActivity;Landroid/widget/CheckBox;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/miui/player/ui/ConnChangedHintActivity$1;

    invoke-direct {v6, p0}, Lcom/miui/player/ui/ConnChangedHintActivity$1;-><init>(Lcom/miui/player/ui/ConnChangedHintActivity;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 59
    return-void

    .line 25
    .end local v0           #checkBox:Landroid/widget/CheckBox;
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v3           #msgId:I
    .end local v4           #view:Landroid/view/View;
    :cond_0
    const v3, 0x7f08006f

    goto :goto_0

    .line 35
    .restart local v0       #checkBox:Landroid/widget/CheckBox;
    .restart local v1       #inflater:Landroid/view/LayoutInflater;
    .restart local v3       #msgId:I
    .restart local v4       #view:Landroid/view/View;
    :cond_1
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1
.end method
