.class Lcom/android/email/Controller$11;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/Controller;->setMessageRead(JZ)Lcom/android/emailcommon/utility/EmailAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller;

.field final synthetic val$isRead:Z

.field final synthetic val$messageId:J


# direct methods
.method constructor <init>(Lcom/android/email/Controller;JZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 875
    iput-object p1, p0, Lcom/android/email/Controller$11;->this$0:Lcom/android/email/Controller;

    iput-wide p2, p0, Lcom/android/email/Controller$11;->val$messageId:J

    iput-boolean p4, p0, Lcom/android/email/Controller$11;->val$isRead:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 878
    iget-object v0, p0, Lcom/android/email/Controller$11;->this$0:Lcom/android/email/Controller;

    iget-wide v1, p0, Lcom/android/email/Controller$11;->val$messageId:J

    const-string v3, "flagRead"

    iget-boolean v4, p0, Lcom/android/email/Controller$11;->val$isRead:Z

    #calls: Lcom/android/email/Controller;->setMessageBooleanSync(JLjava/lang/String;Z)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/email/Controller;->access$500(Lcom/android/email/Controller;JLjava/lang/String;Z)V

    .line 879
    return-void
.end method
