.class Lcom/android/mms/ui/MessageEditableActivityBase$3;
.super Landroid/os/Handler;
.source "MessageEditableActivityBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageEditableActivityBase;->initResourceRefs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageEditableActivityBase;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageEditableActivityBase;)V
    .locals 0
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/mms/ui/MessageEditableActivityBase$3;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase$3;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    iget-object v0, v0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentProcessor:Lcom/android/mms/ui/AttachmentProcessor;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/AttachmentProcessor;->handleAttachentMessage(Landroid/os/Message;)V

    .line 259
    return-void
.end method
