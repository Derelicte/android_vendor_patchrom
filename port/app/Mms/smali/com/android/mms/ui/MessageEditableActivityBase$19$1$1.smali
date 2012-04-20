.class Lcom/android/mms/ui/MessageEditableActivityBase$19$1$1;
.super Ljava/lang/Object;
.source "MessageEditableActivityBase.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageEditableActivityBase$19$1;->onEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/mms/ui/MessageEditableActivityBase$19$1;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageEditableActivityBase$19$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1413
    iput-object p1, p0, Lcom/android/mms/ui/MessageEditableActivityBase$19$1$1;->this$2:Lcom/android/mms/ui/MessageEditableActivityBase$19$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 1416
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase$19$1$1;->this$2:Lcom/android/mms/ui/MessageEditableActivityBase$19$1;

    iget-object v0, v0, Lcom/android/mms/ui/MessageEditableActivityBase$19$1;->this$1:Lcom/android/mms/ui/MessageEditableActivityBase$19;

    iget-object v0, v0, Lcom/android/mms/ui/MessageEditableActivityBase$19;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->onResetMessageAnimationEnd()V

    .line 1417
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase$19$1$1;->this$2:Lcom/android/mms/ui/MessageEditableActivityBase$19$1;

    iget-object v0, v0, Lcom/android/mms/ui/MessageEditableActivityBase$19$1;->this$1:Lcom/android/mms/ui/MessageEditableActivityBase$19;

    iget-object v0, v0, Lcom/android/mms/ui/MessageEditableActivityBase$19;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    iget-object v0, v0, Lcom/android/mms/ui/MessageEditableActivityBase;->mMessageContentPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1418
    const/4 v0, 0x1

    return v0
.end method
