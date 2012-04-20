.class Lcom/android/contacts/detail/UnknownContactFragment$3;
.super Ljava/lang/Object;
.source "UnknownContactFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/UnknownContactFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/android/contacts/CalllogLoader$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/UnknownContactFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/UnknownContactFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 327
    iput-object p1, p0, Lcom/android/contacts/detail/UnknownContactFragment$3;->this$0:Lcom/android/contacts/detail/UnknownContactFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/contacts/CalllogLoader$Result;",
            ">;"
        }
    .end annotation

    .prologue
    .line 331
    new-instance v0, Lcom/android/contacts/CalllogLoader;

    iget-object v1, p0, Lcom/android/contacts/detail/UnknownContactFragment$3;->this$0:Lcom/android/contacts/detail/UnknownContactFragment;

    #getter for: Lcom/android/contacts/detail/UnknownContactFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/detail/UnknownContactFragment;->access$100(Lcom/android/contacts/detail/UnknownContactFragment;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/detail/UnknownContactFragment$3;->this$0:Lcom/android/contacts/detail/UnknownContactFragment;

    #getter for: Lcom/android/contacts/detail/UnknownContactFragment;->mNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/contacts/detail/UnknownContactFragment;->access$300(Lcom/android/contacts/detail/UnknownContactFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/CalllogLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/contacts/CalllogLoader$Result;)V
    .locals 2
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/contacts/CalllogLoader$Result;",
            ">;",
            "Lcom/android/contacts/CalllogLoader$Result;",
            ")V"
        }
    .end annotation

    .prologue
    .line 337
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/contacts/CalllogLoader$Result;>;"
    iget-object v0, p0, Lcom/android/contacts/detail/UnknownContactFragment$3;->this$0:Lcom/android/contacts/detail/UnknownContactFragment;

    #setter for: Lcom/android/contacts/detail/UnknownContactFragment;->mResult:Lcom/android/contacts/CalllogLoader$Result;
    invoke-static {v0, p2}, Lcom/android/contacts/detail/UnknownContactFragment;->access$202(Lcom/android/contacts/detail/UnknownContactFragment;Lcom/android/contacts/CalllogLoader$Result;)Lcom/android/contacts/CalllogLoader$Result;

    .line 338
    iget-object v0, p0, Lcom/android/contacts/detail/UnknownContactFragment$3;->this$0:Lcom/android/contacts/detail/UnknownContactFragment;

    #calls: Lcom/android/contacts/detail/UnknownContactFragment;->bindCalllogList()V
    invoke-static {v0}, Lcom/android/contacts/detail/UnknownContactFragment;->access$400(Lcom/android/contacts/detail/UnknownContactFragment;)V

    .line 340
    iget-object v0, p0, Lcom/android/contacts/detail/UnknownContactFragment$3;->this$0:Lcom/android/contacts/detail/UnknownContactFragment;

    #getter for: Lcom/android/contacts/detail/UnknownContactFragment;->mListener:Lcom/android/contacts/detail/UnknownContactFragment$Listener;
    invoke-static {v0}, Lcom/android/contacts/detail/UnknownContactFragment;->access$500(Lcom/android/contacts/detail/UnknownContactFragment;)Lcom/android/contacts/detail/UnknownContactFragment$Listener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 341
    iget-object v0, p0, Lcom/android/contacts/detail/UnknownContactFragment$3;->this$0:Lcom/android/contacts/detail/UnknownContactFragment;

    #getter for: Lcom/android/contacts/detail/UnknownContactFragment;->mListener:Lcom/android/contacts/detail/UnknownContactFragment$Listener;
    invoke-static {v0}, Lcom/android/contacts/detail/UnknownContactFragment;->access$500(Lcom/android/contacts/detail/UnknownContactFragment;)Lcom/android/contacts/detail/UnknownContactFragment$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/detail/UnknownContactFragment$3;->this$0:Lcom/android/contacts/detail/UnknownContactFragment;

    #getter for: Lcom/android/contacts/detail/UnknownContactFragment;->mResult:Lcom/android/contacts/CalllogLoader$Result;
    invoke-static {v1}, Lcom/android/contacts/detail/UnknownContactFragment;->access$200(Lcom/android/contacts/detail/UnknownContactFragment;)Lcom/android/contacts/CalllogLoader$Result;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/CalllogLoader$Result;->getSpInfo()Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/contacts/detail/UnknownContactFragment$Listener;->setNameAndPhoto(Landroid/util/Pair;)V

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/detail/UnknownContactFragment$3;->this$0:Lcom/android/contacts/detail/UnknownContactFragment;

    #getter for: Lcom/android/contacts/detail/UnknownContactFragment;->mResult:Lcom/android/contacts/CalllogLoader$Result;
    invoke-static {v0}, Lcom/android/contacts/detail/UnknownContactFragment;->access$200(Lcom/android/contacts/detail/UnknownContactFragment;)Lcom/android/contacts/CalllogLoader$Result;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/CalllogLoader$Result;->getSpInfo()Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/UnknownContactFragment$3;->this$0:Lcom/android/contacts/detail/UnknownContactFragment;

    #getter for: Lcom/android/contacts/detail/UnknownContactFragment;->mResult:Lcom/android/contacts/CalllogLoader$Result;
    invoke-static {v0}, Lcom/android/contacts/detail/UnknownContactFragment;->access$200(Lcom/android/contacts/detail/UnknownContactFragment;)Lcom/android/contacts/CalllogLoader$Result;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/CalllogLoader$Result;->getSpInfo()Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/android/contacts/detail/UnknownContactFragment$3;->this$0:Lcom/android/contacts/detail/UnknownContactFragment;

    #getter for: Lcom/android/contacts/detail/UnknownContactFragment;->mResult:Lcom/android/contacts/CalllogLoader$Result;
    invoke-static {v0}, Lcom/android/contacts/detail/UnknownContactFragment;->access$200(Lcom/android/contacts/detail/UnknownContactFragment;)Lcom/android/contacts/CalllogLoader$Result;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/CalllogLoader$Result;->getSpInfo()Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 327
    check-cast p2, Lcom/android/contacts/CalllogLoader$Result;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/detail/UnknownContactFragment$3;->onLoadFinished(Landroid/content/Loader;Lcom/android/contacts/CalllogLoader$Result;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/contacts/CalllogLoader$Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 352
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/contacts/CalllogLoader$Result;>;"
    return-void
.end method
