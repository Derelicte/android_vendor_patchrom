.class Lcom/android/systemui/settings/StyleSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "StyleSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/settings/StyleSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/StyleSettings;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/StyleSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/systemui/settings/StyleSettings$1;->this$0:Lcom/android/systemui/settings/StyleSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/systemui/settings/StyleSettings$1;->this$0:Lcom/android/systemui/settings/StyleSettings;

    #getter for: Lcom/android/systemui/settings/StyleSettings;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/systemui/settings/StyleSettings;->access$000(Lcom/android/systemui/settings/StyleSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 40
    return-void
.end method
