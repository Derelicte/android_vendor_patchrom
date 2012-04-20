.class Lcom/miui/home/launcher/Launcher$CreateShortcut;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CreateShortcut"
.end annotation


# instance fields
.field private mAdapter:Lcom/miui/home/launcher/AddAdapter;

.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 1663
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$CreateShortcut;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/Launcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1663
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Launcher$CreateShortcut;-><init>(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method

.method private cleanup()V
    .locals 2

    .prologue
    .line 1696
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$CreateShortcut;->this$0:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1700
    :goto_0
    return-void

    .line 1697
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method createDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 1670
    new-instance v2, Lcom/miui/home/launcher/AddAdapter;

    iget-object v3, p0, Lcom/miui/home/launcher/Launcher$CreateShortcut;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {v2, v3}, Lcom/miui/home/launcher/AddAdapter;-><init>(Lcom/miui/home/launcher/Launcher;)V

    iput-object v2, p0, Lcom/miui/home/launcher/Launcher$CreateShortcut;->mAdapter:Lcom/miui/home/launcher/AddAdapter;

    .line 1672
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$CreateShortcut;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1673
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$CreateShortcut;->this$0:Lcom/miui/home/launcher/Launcher;

    const v3, 0x7f0b0009

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1674
    iget-object v2, p0, Lcom/miui/home/launcher/Launcher$CreateShortcut;->mAdapter:Lcom/miui/home/launcher/AddAdapter;

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1676
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 1678
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1679
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1680
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1681
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1683
    return-object v1
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 1687
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$CreateShortcut;->this$0:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x0

    #setter for: Lcom/miui/home/launcher/Launcher;->mWaitingForResult:Z
    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->access$802(Lcom/miui/home/launcher/Launcher;Z)Z

    .line 1688
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher$CreateShortcut;->cleanup()V

    .line 1689
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1706
    invoke-direct {p0}, Lcom/miui/home/launcher/Launcher$CreateShortcut;->cleanup()V

    .line 1708
    packed-switch p2, :pswitch_data_0

    .line 1715
    :goto_0
    return-void

    .line 1711
    :pswitch_0
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$CreateShortcut;->this$0:Lcom/miui/home/launcher/Launcher;

    #calls: Lcom/miui/home/launcher/Launcher;->pickShortcut()V
    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->access$900(Lcom/miui/home/launcher/Launcher;)V

    goto :goto_0

    .line 1708
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 1692
    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 1718
    iget-object v0, p0, Lcom/miui/home/launcher/Launcher$CreateShortcut;->this$0:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x1

    #setter for: Lcom/miui/home/launcher/Launcher;->mWaitingForResult:Z
    invoke-static {v0, v1}, Lcom/miui/home/launcher/Launcher;->access$802(Lcom/miui/home/launcher/Launcher;Z)Z

    .line 1719
    return-void
.end method
