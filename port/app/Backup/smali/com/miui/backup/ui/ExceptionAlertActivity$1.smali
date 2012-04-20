.class Lcom/miui/backup/ui/ExceptionAlertActivity$1;
.super Ljava/lang/Object;
.source "ExceptionAlertActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/backup/ui/ExceptionAlertActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/backup/ui/ExceptionAlertActivity;


# direct methods
.method constructor <init>(Lcom/miui/backup/ui/ExceptionAlertActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/miui/backup/ui/ExceptionAlertActivity$1;->this$0:Lcom/miui/backup/ui/ExceptionAlertActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/backup/ui/ExceptionAlertActivity$1;->this$0:Lcom/miui/backup/ui/ExceptionAlertActivity;

    invoke-virtual {v0}, Lcom/miui/backup/ui/ExceptionAlertActivity;->finish()V

    .line 37
    return-void
.end method
