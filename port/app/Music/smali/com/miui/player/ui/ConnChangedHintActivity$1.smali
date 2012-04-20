.class Lcom/miui/player/ui/ConnChangedHintActivity$1;
.super Ljava/lang/Object;
.source "ConnChangedHintActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/ui/ConnChangedHintActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/ConnChangedHintActivity;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/ConnChangedHintActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/miui/player/ui/ConnChangedHintActivity$1;->this$0:Lcom/miui/player/ui/ConnChangedHintActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/miui/player/ui/ConnChangedHintActivity$1;->this$0:Lcom/miui/player/ui/ConnChangedHintActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/ConnChangedHintActivity;->finish()V

    .line 54
    return-void
.end method
