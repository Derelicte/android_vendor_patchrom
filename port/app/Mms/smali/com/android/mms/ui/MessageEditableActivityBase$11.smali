.class Lcom/android/mms/ui/MessageEditableActivityBase$11;
.super Ljava/lang/Object;
.source "MessageEditableActivityBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageEditableActivityBase;->onProtocolChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

.field final synthetic val$mms:Z


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageEditableActivityBase;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 673
    iput-object p1, p0, Lcom/android/mms/ui/MessageEditableActivityBase$11;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    iput-boolean p2, p0, Lcom/android/mms/ui/MessageEditableActivityBase$11;->val$mms:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 675
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase$11;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    iget-boolean v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase$11;->val$mms:Z

    #calls: Lcom/android/mms/ui/MessageEditableActivityBase;->toastConvertInfo(Z)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->access$200(Lcom/android/mms/ui/MessageEditableActivityBase;Z)V

    .line 676
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase$11;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    #calls: Lcom/android/mms/ui/MessageEditableActivityBase;->removeChenghu()V
    invoke-static {v0}, Lcom/android/mms/ui/MessageEditableActivityBase;->access$300(Lcom/android/mms/ui/MessageEditableActivityBase;)V

    .line 677
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase$11;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    iget-boolean v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase$11;->val$mms:Z

    #calls: Lcom/android/mms/ui/MessageEditableActivityBase;->updateCounter(Z)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageEditableActivityBase;->access$400(Lcom/android/mms/ui/MessageEditableActivityBase;Z)V

    .line 678
    return-void
.end method
