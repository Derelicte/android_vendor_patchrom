.class Lcom/android/contacts/activities/ContactCardActivity$2;
.super Ljava/lang/Object;
.source "ContactCardActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/ContactCardActivity;
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
        "Lcom/android/contacts/ContactLoader$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ContactCardActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/ContactCardActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/contacts/activities/ContactCardActivity$2;->this$0:Lcom/android/contacts/activities/ContactCardActivity;

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
            "Lcom/android/contacts/ContactLoader$Result;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    new-instance v0, Lcom/android/contacts/ContactLoader;

    iget-object v1, p0, Lcom/android/contacts/activities/ContactCardActivity$2;->this$0:Lcom/android/contacts/activities/ContactCardActivity;

    #getter for: Lcom/android/contacts/activities/ContactCardActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/activities/ContactCardActivity;->access$000(Lcom/android/contacts/activities/ContactCardActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/activities/ContactCardActivity$2;->this$0:Lcom/android/contacts/activities/ContactCardActivity;

    #getter for: Lcom/android/contacts/activities/ContactCardActivity;->contactUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/contacts/activities/ContactCardActivity;->access$200(Lcom/android/contacts/activities/ContactCardActivity;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/ContactLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/contacts/ContactLoader$Result;)V
    .locals 1
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/contacts/ContactLoader$Result;",
            ">;",
            "Lcom/android/contacts/ContactLoader$Result;",
            ")V"
        }
    .end annotation

    .prologue
    .line 234
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/contacts/ContactLoader$Result;>;"
    iget-object v0, p0, Lcom/android/contacts/activities/ContactCardActivity$2;->this$0:Lcom/android/contacts/activities/ContactCardActivity;

    #setter for: Lcom/android/contacts/activities/ContactCardActivity;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v0, p2}, Lcom/android/contacts/activities/ContactCardActivity;->access$302(Lcom/android/contacts/activities/ContactCardActivity;Lcom/android/contacts/ContactLoader$Result;)Lcom/android/contacts/ContactLoader$Result;

    .line 235
    iget-object v0, p0, Lcom/android/contacts/activities/ContactCardActivity$2;->this$0:Lcom/android/contacts/activities/ContactCardActivity;

    #calls: Lcom/android/contacts/activities/ContactCardActivity;->bindContact()V
    invoke-static {v0}, Lcom/android/contacts/activities/ContactCardActivity;->access$400(Lcom/android/contacts/activities/ContactCardActivity;)V

    .line 236
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 225
    check-cast p2, Lcom/android/contacts/ContactLoader$Result;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/activities/ContactCardActivity$2;->onLoadFinished(Landroid/content/Loader;Lcom/android/contacts/ContactLoader$Result;)V

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
            "Lcom/android/contacts/ContactLoader$Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 240
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/contacts/ContactLoader$Result;>;"
    return-void
.end method
