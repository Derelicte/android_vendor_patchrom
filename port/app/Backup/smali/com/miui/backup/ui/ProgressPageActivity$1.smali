.class Lcom/miui/backup/ui/ProgressPageActivity$1;
.super Ljava/lang/Object;
.source "ProgressPageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/backup/ui/ProgressPageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/backup/ui/ProgressPageActivity;


# direct methods
.method constructor <init>(Lcom/miui/backup/ui/ProgressPageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/miui/backup/ui/ProgressPageActivity$1;->this$0:Lcom/miui/backup/ui/ProgressPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity$1;->this$0:Lcom/miui/backup/ui/ProgressPageActivity;

    const/4 v1, 0x1

    #calls: Lcom/miui/backup/ui/ProgressPageActivity;->createDialog(I)V
    invoke-static {v0, v1}, Lcom/miui/backup/ui/ProgressPageActivity;->access$000(Lcom/miui/backup/ui/ProgressPageActivity;I)V

    .line 91
    return-void
.end method
