.class Lcom/google/android/gsf/login/ProfileTask$1;
.super Lcom/google/android/gsf/login/CancelableCallbackThread;
.source "ProfileTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/login/ProfileTask;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/ProfileTask;

.field final synthetic val$resultMessage:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/ProfileTask;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/android/gsf/login/ProfileTask$1;->this$0:Lcom/google/android/gsf/login/ProfileTask;

    iput-object p3, p0, Lcom/google/android/gsf/login/ProfileTask$1;->val$resultMessage:Landroid/os/Message;

    invoke-direct {p0, p2}, Lcom/google/android/gsf/login/CancelableCallbackThread;-><init>(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method protected runInBackground()V
    .locals 5

    .prologue
    .line 47
    iget-object v2, p0, Lcom/google/android/gsf/login/ProfileTask$1;->this$0:Lcom/google/android/gsf/login/ProfileTask;

    #getter for: Lcom/google/android/gsf/loginservice/BaseActivity;->mGlsUser:Lcom/google/android/gsf/loginservice/GLSUser;
    invoke-static {v2}, Lcom/google/android/gsf/login/ProfileTask;->access$100(Lcom/google/android/gsf/login/ProfileTask;)Lcom/google/android/gsf/loginservice/GLSUser;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gsf/login/ProfileTask$1;->this$0:Lcom/google/android/gsf/login/ProfileTask;

    #getter for: Lcom/google/android/gsf/loginservice/BaseActivity;->mSession:Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;
    invoke-static {v3}, Lcom/google/android/gsf/login/ProfileTask;->access$000(Lcom/google/android/gsf/login/ProfileTask;)Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gsf/loginservice/GLSUser;->createProfile(Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;)Lorg/json/JSONObject;

    move-result-object v0

    .line 48
    .local v0, res:Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/google/android/gsf/loginservice/GLSUser$Status;->fromJSON(Lorg/json/JSONObject;)Lcom/google/android/gsf/loginservice/GLSUser$Status;

    move-result-object v1

    .line 49
    .local v1, status:Lcom/google/android/gsf/loginservice/GLSUser$Status;
    sget-object v2, Lcom/google/android/gsf/loginservice/GLSUser$Status;->SUCCESS:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    if-eq v1, v2, :cond_0

    .line 50
    sget-object v1, Lcom/google/android/gsf/loginservice/GLSUser$Status;->GPLUS_PROFILE_ERROR:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    .line 52
    :cond_0
    iget-object v2, p0, Lcom/google/android/gsf/login/ProfileTask$1;->val$resultMessage:Landroid/os/Message;

    invoke-virtual {v1, v2}, Lcom/google/android/gsf/loginservice/GLSUser$Status;->toMessage(Landroid/os/Message;)V

    .line 53
    iget-object v2, p0, Lcom/google/android/gsf/login/CancelableCallbackThread;->mIsCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_1

    .line 54
    iget-object v2, p0, Lcom/google/android/gsf/login/ProfileTask$1;->this$0:Lcom/google/android/gsf/login/ProfileTask;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gsf/login/ProfileTask;->ensureDelay(J)V

    .line 56
    :cond_1
    return-void
.end method
