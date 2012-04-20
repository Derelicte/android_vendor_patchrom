.class Lcom/miui/milk/ui/CloudBackupFragment$1;
.super Ljava/lang/Object;
.source "CloudBackupFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/milk/ui/CloudBackupFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/milk/ui/CloudBackupFragment;


# direct methods
.method constructor <init>(Lcom/miui/milk/ui/CloudBackupFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/miui/milk/ui/CloudBackupFragment$1;->this$0:Lcom/miui/milk/ui/CloudBackupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/miui/milk/ui/CloudBackupFragment$1;->this$0:Lcom/miui/milk/ui/CloudBackupFragment;

    iget-object v0, v0, Lcom/miui/milk/ui/CloudBackupFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/miui/milk/ui/CloudBackupFragment$1;->this$0:Lcom/miui/milk/ui/CloudBackupFragment;

    invoke-static {v0, v1}, Lcom/miui/milk/util/AccountUtil;->addAccount(Landroid/content/Context;Landroid/accounts/AccountManagerCallback;)V

    .line 69
    return-void
.end method
