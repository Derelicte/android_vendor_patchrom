.class Lcom/miui/player/ui/ConnChangedHintActivity$2;
.super Ljava/lang/Object;
.source "ConnChangedHintActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$checkBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/ConnChangedHintActivity;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/miui/player/ui/ConnChangedHintActivity$2;->this$0:Lcom/miui/player/ui/ConnChangedHintActivity;

    iput-object p2, p0, Lcom/miui/player/ui/ConnChangedHintActivity$2;->val$checkBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/miui/player/ui/ConnChangedHintActivity$2;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/miui/player/ui/ConnChangedHintActivity$2;->this$0:Lcom/miui/player/ui/ConnChangedHintActivity;

    const-string v1, "flow_save_hint"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/player/util/PreferenceCache;->setPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/ConnChangedHintActivity$2;->this$0:Lcom/miui/player/ui/ConnChangedHintActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/ConnChangedHintActivity;->finish()V

    .line 47
    return-void
.end method
