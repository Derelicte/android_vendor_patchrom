.class Lcom/android/contacts/detail/ContactLoaderFragment$3;
.super Ljava/lang/Object;
.source "ContactLoaderFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactLoaderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/ContactLoaderFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/ContactLoaderFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 485
    iput-object p1, p0, Lcom/android/contacts/detail/ContactLoaderFragment$3;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 489
    iget-object v3, p0, Lcom/android/contacts/detail/ContactLoaderFragment$3;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    #getter for: Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$300(Lcom/android/contacts/detail/ContactLoaderFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/ContactLoader$Result;->getPhoneNumbers()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 490
    .local v2, phoneNumbers:[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/contacts/detail/ContactLoaderFragment$3;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    #getter for: Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$300(Lcom/android/contacts/detail/ContactLoaderFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/ContactLoader$Result;->getPhoneNumbers()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 491
    iget-object v3, p0, Lcom/android/contacts/detail/ContactLoaderFragment$3;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    #getter for: Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$000(Lcom/android/contacts/detail/ContactLoaderFragment;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/contacts/ContactSaveService;->createDeleteCalllog(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 492
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/contacts/detail/ContactLoaderFragment$3;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    #getter for: Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$000(Lcom/android/contacts/detail/ContactLoaderFragment;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 493
    iget-object v3, p0, Lcom/android/contacts/detail/ContactLoaderFragment$3;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    #getter for: Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$000(Lcom/android/contacts/detail/ContactLoaderFragment;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/detail/ContactLoaderFragment$3;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    const v5, 0x7f0b0204

    invoke-virtual {v4, v5}, Lcom/android/contacts/detail/ContactLoaderFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/contacts/ContactsUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 496
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 497
    .local v0, args:Landroid/os/Bundle;
    const-string v3, "contactUri"

    iget-object v4, p0, Lcom/android/contacts/detail/ContactLoaderFragment$3;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    #getter for: Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$100(Lcom/android/contacts/detail/ContactLoaderFragment;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 498
    iget-object v3, p0, Lcom/android/contacts/detail/ContactLoaderFragment$3;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-virtual {v3}, Lcom/android/contacts/detail/ContactLoaderFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/contacts/detail/ContactLoaderFragment$3;->this$0:Lcom/android/contacts/detail/ContactLoaderFragment;

    #getter for: Lcom/android/contacts/detail/ContactLoaderFragment;->mDetailLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    invoke-static {v5}, Lcom/android/contacts/detail/ContactLoaderFragment;->access$500(Lcom/android/contacts/detail/ContactLoaderFragment;)Landroid/app/LoaderManager$LoaderCallbacks;

    move-result-object v5

    invoke-virtual {v3, v4, v0, v5}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 499
    return-void
.end method
