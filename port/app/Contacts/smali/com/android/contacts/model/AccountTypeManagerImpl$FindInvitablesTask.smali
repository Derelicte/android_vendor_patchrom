.class Lcom/android/contacts/model/AccountTypeManagerImpl$FindInvitablesTask;
.super Landroid/os/AsyncTask;
.source "AccountTypeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/AccountTypeManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FindInvitablesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/Map",
        "<",
        "Lcom/android/contacts/model/AccountTypeWithDataSet;",
        "Lcom/android/contacts/model/AccountType;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/model/AccountTypeManagerImpl;


# direct methods
.method private constructor <init>(Lcom/android/contacts/model/AccountTypeManagerImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 771
    iput-object p1, p0, Lcom/android/contacts/model/AccountTypeManagerImpl$FindInvitablesTask;->this$0:Lcom/android/contacts/model/AccountTypeManagerImpl;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/model/AccountTypeManagerImpl;Lcom/android/contacts/model/AccountTypeManagerImpl$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 771
    invoke-direct {p0, p1}, Lcom/android/contacts/model/AccountTypeManagerImpl$FindInvitablesTask;-><init>(Lcom/android/contacts/model/AccountTypeManagerImpl;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 771
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/AccountTypeManagerImpl$FindInvitablesTask;->doInBackground([Ljava/lang/Void;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/Map;
    .locals 2
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/model/AccountTypeWithDataSet;",
            "Lcom/android/contacts/model/AccountType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 776
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl$FindInvitablesTask;->this$0:Lcom/android/contacts/model/AccountTypeManagerImpl;

    iget-object v1, p0, Lcom/android/contacts/model/AccountTypeManagerImpl$FindInvitablesTask;->this$0:Lcom/android/contacts/model/AccountTypeManagerImpl;

    #getter for: Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/model/AccountTypeManagerImpl;->access$300(Lcom/android/contacts/model/AccountTypeManagerImpl;)Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/android/contacts/model/AccountTypeManagerImpl;->findUsableInvitableAccountTypes(Landroid/content/Context;)Ljava/util/Map;
    invoke-static {v0, v1}, Lcom/android/contacts/model/AccountTypeManagerImpl;->access$400(Lcom/android/contacts/model/AccountTypeManagerImpl;Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 771
    check-cast p1, Ljava/util/Map;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/AccountTypeManagerImpl$FindInvitablesTask;->onPostExecute(Ljava/util/Map;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/Map;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/model/AccountTypeWithDataSet;",
            "Lcom/android/contacts/model/AccountType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 781
    .local p1, accountTypes:Ljava/util/Map;,"Ljava/util/Map<Lcom/android/contacts/model/AccountTypeWithDataSet;Lcom/android/contacts/model/AccountType;>;"
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl$FindInvitablesTask;->this$0:Lcom/android/contacts/model/AccountTypeManagerImpl;

    #getter for: Lcom/android/contacts/model/AccountTypeManagerImpl;->mInvitableAccountTypeCache:Lcom/android/contacts/model/AccountTypeManagerImpl$InvitableAccountTypeCache;
    invoke-static {v0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->access$500(Lcom/android/contacts/model/AccountTypeManagerImpl;)Lcom/android/contacts/model/AccountTypeManagerImpl$InvitableAccountTypeCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/contacts/model/AccountTypeManagerImpl$InvitableAccountTypeCache;->setCachedValue(Ljava/util/Map;)V

    .line 782
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl$FindInvitablesTask;->this$0:Lcom/android/contacts/model/AccountTypeManagerImpl;

    #getter for: Lcom/android/contacts/model/AccountTypeManagerImpl;->mInvitablesTaskIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->access$600(Lcom/android/contacts/model/AccountTypeManagerImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 783
    return-void
.end method
