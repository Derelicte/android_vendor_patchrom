.class Lcom/android/browser/MiuiNavigationBarBase$1;
.super Ljava/lang/Object;
.source "MiuiNavigationBarBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/MiuiNavigationBarBase;->onDismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/MiuiNavigationBarBase;

.field final synthetic val$currentTab:Lcom/android/browser/MiuiTab;


# direct methods
.method constructor <init>(Lcom/android/browser/MiuiNavigationBarBase;Lcom/android/browser/MiuiTab;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/browser/MiuiNavigationBarBase$1;->this$0:Lcom/android/browser/MiuiNavigationBarBase;

    iput-object p2, p0, Lcom/android/browser/MiuiNavigationBarBase$1;->val$currentTab:Lcom/android/browser/MiuiTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/browser/MiuiNavigationBarBase$1;->this$0:Lcom/android/browser/MiuiNavigationBarBase;

    invoke-virtual {v0}, Lcom/android/browser/MiuiNavigationBarBase;->clearFocus()V

    .line 63
    iget-object v0, p0, Lcom/android/browser/MiuiNavigationBarBase$1;->val$currentTab:Lcom/android/browser/MiuiTab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/MiuiNavigationBarBase$1;->this$0:Lcom/android/browser/MiuiNavigationBarBase;

    iget-boolean v0, v0, Lcom/android/browser/MiuiNavigationBarBase;->mInVoiceMode:Z

    if-nez v0, :cond_0

    .line 64
    iget-object v1, p0, Lcom/android/browser/MiuiNavigationBarBase$1;->this$0:Lcom/android/browser/MiuiNavigationBarBase;

    iget-object v0, p0, Lcom/android/browser/MiuiNavigationBarBase$1;->val$currentTab:Lcom/android/browser/MiuiTab;

    invoke-virtual {v0}, Lcom/android/browser/MiuiTab;->inPageLoad()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/browser/MiuiNavigationBarBase$1;->val$currentTab:Lcom/android/browser/MiuiTab;

    invoke-virtual {v0}, Lcom/android/browser/MiuiTab;->getUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/browser/MiuiNavigationBarBase;->setDisplayTitle(Ljava/lang/String;)V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/android/browser/MiuiNavigationBarBase$1;->val$currentTab:Lcom/android/browser/MiuiTab;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/browser/MiuiNavigationBarBase$1;->val$currentTab:Lcom/android/browser/MiuiTab;

    invoke-virtual {v0}, Lcom/android/browser/MiuiTab;->isShowingMiuiHome()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/android/browser/MiuiNavigationBarBase$1;->this$0:Lcom/android/browser/MiuiNavigationBarBase;

    iget-object v0, v0, Lcom/android/browser/MiuiNavigationBarBase;->mBaseUi:Lcom/android/browser/BaseUi;

    invoke-virtual {v0}, Lcom/android/browser/BaseUi;->getMiuiHome()Lcom/android/browser/MiuiHome;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/MiuiHome;->requestFocus()Z

    .line 70
    :cond_1
    return-void

    .line 64
    :cond_2
    iget-object v0, p0, Lcom/android/browser/MiuiNavigationBarBase$1;->val$currentTab:Lcom/android/browser/MiuiTab;

    invoke-virtual {v0}, Lcom/android/browser/MiuiTab;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
