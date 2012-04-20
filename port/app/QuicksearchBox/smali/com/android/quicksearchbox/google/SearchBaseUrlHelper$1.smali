.class Lcom/android/quicksearchbox/google/SearchBaseUrlHelper$1;
.super Landroid/os/AsyncTask;
.source "SearchBaseUrlHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/google/SearchBaseUrlHelper;->checkSearchDomain()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quicksearchbox/google/SearchBaseUrlHelper;

.field final synthetic val$request:Lcom/android/quicksearchbox/util/HttpHelper$GetRequest;


# direct methods
.method constructor <init>(Lcom/android/quicksearchbox/google/SearchBaseUrlHelper;Lcom/android/quicksearchbox/util/HttpHelper$GetRequest;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/quicksearchbox/google/SearchBaseUrlHelper$1;->this$0:Lcom/android/quicksearchbox/google/SearchBaseUrlHelper;

    iput-object p2, p0, Lcom/android/quicksearchbox/google/SearchBaseUrlHelper$1;->val$request:Lcom/android/quicksearchbox/util/HttpHelper$GetRequest;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/google/SearchBaseUrlHelper$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .parameter "params"

    .prologue
    const/4 v4, 0x0

    .line 140
    :try_start_0
    iget-object v2, p0, Lcom/android/quicksearchbox/google/SearchBaseUrlHelper$1;->this$0:Lcom/android/quicksearchbox/google/SearchBaseUrlHelper;

    #getter for: Lcom/android/quicksearchbox/google/SearchBaseUrlHelper;->mHttpHelper:Lcom/android/quicksearchbox/util/HttpHelper;
    invoke-static {v2}, Lcom/android/quicksearchbox/google/SearchBaseUrlHelper;->access$000(Lcom/android/quicksearchbox/google/SearchBaseUrlHelper;)Lcom/android/quicksearchbox/util/HttpHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/quicksearchbox/google/SearchBaseUrlHelper$1;->val$request:Lcom/android/quicksearchbox/util/HttpHelper$GetRequest;

    invoke-interface {v2, v3}, Lcom/android/quicksearchbox/util/HttpHelper;->get(Lcom/android/quicksearchbox/util/HttpHelper$GetRequest;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 151
    .local v0, domain:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/quicksearchbox/google/SearchBaseUrlHelper$1;->this$0:Lcom/android/quicksearchbox/google/SearchBaseUrlHelper;

    #calls: Lcom/android/quicksearchbox/google/SearchBaseUrlHelper;->setSearchBaseDomain(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lcom/android/quicksearchbox/google/SearchBaseUrlHelper;->access$200(Lcom/android/quicksearchbox/google/SearchBaseUrlHelper;Ljava/lang/String;)V

    .line 153
    :goto_0
    return-object v4

    .line 141
    .end local v0           #domain:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 145
    .local v1, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/quicksearchbox/google/SearchBaseUrlHelper$1;->this$0:Lcom/android/quicksearchbox/google/SearchBaseUrlHelper;

    #calls: Lcom/android/quicksearchbox/google/SearchBaseUrlHelper;->getDefaultBaseDomain()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/quicksearchbox/google/SearchBaseUrlHelper;->access$100(Lcom/android/quicksearchbox/google/SearchBaseUrlHelper;)Ljava/lang/String;

    move-result-object v0

    .line 147
    .restart local v0       #domain:Ljava/lang/String;
    goto :goto_0
.end method
